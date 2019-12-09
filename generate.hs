{-# LANGUAGE DeriveGeneric #-}
-- | Script to generate dockerfiles. Obviously using Haskell.
--
-- TBW usage
module Main (main) where

import Control.Monad (forM_)
import Data.Char (toLower)
import Data.List (intercalate)
import GHC.Generics (Generic)
import System.FilePath ((</>), takeDirectory)
import System.Directory (createDirectoryIfMissing)

import Zinza

imageDefs :: Images
imageDefs = Images
    [ mk dist ver slim
    | dist <- [Stretch ..]
    , slim <- [True, False]
    , ver  <- [ Version [8,8,1]
              , Version [8,6,5]
              , Version [8,4,4]
              , Version [8,2,2]
              , Version [8,0,2]
              , Version [7,10,3]
              , Version [7,8,4]
              , Version [7,6,3]
              ]
    ]
  where
    mk :: Distribution -> Version -> Bool -> Image
    mk dist gv slim = Image fd fp Params
        { pTag          = tag
        , pDistribution = dist
        , pGhcVersion   = gv
        , pSlim         = slim
        , pStack        = gv >= Version [8,2] -- I don't know what stack supports
        , pStackVersion = Version [2,1,3]
        -- See stack-shasum.sh
        , pStackSha256  = "c724b207831fe5f06b087bac7e01d33e61a1c9cad6be0468f9c117d383ec5673"
        , pIsDebian     = dist `elem` [Stretch, Buster]
        }
      where
        tag = dispVersion (majorVersion gv)
            ++ "-" ++ dispDistribution dist
            ++ if slim then "-slim" else ""

        dir = dispVersion (majorVersion gv) </> dispDistribution dist
        fd | slim      = dir </> "slim"
           | otherwise = dir
        fp = fd </> "Dockerfile" 

main :: IO ()
main = do
    template  <- parseAndCompileTemplateIO "Dockerfile.template"
    templateM <- parseAndCompileTemplateIO "Makefile.template"

    contentsM <- templateM $ Images
        [ img
        | img <- images imageDefs
        , pDistribution (imgParams img) == Bionic -- TODO
        ]
    writeFile "Makefile" contentsM

    forM_ (images imageDefs) $ \(Image _ fp p) -> do
        contents <- template p
        createDirectoryIfMissing True (takeDirectory fp)
        writeFile fp contents

-------------------------------------------------------------------------------
-- Data types
-------------------------------------------------------------------------------

newtype Images = Images { images :: [Image] }
  deriving (Show, Generic)

instance Zinza Images where
    toType  = genericToType id
    toValue = genericToValue id

data Image = Image
    { imgDirectory :: FilePath
    , imgFilepath  :: FilePath
    , imgParams    :: Params
    }
  deriving (Show, Generic)

instance Zinza Image where
    toType  = genericToTypeSFP
    toValue = genericToValueSFP

newtype Version = Version [Int]
  deriving (Show,Eq,Ord)

dispVersion :: Version -> String
dispVersion (Version vs) = intercalate "." (map show vs)

majorVersion :: Version -> Version
majorVersion v@(Version [])      = v
majorVersion v@(Version [_])     = v
majorVersion v@(Version (x:y:_)) = Version [x,y]

instance Zinza Version where
    toType _ = TyString Nothing
    toValue  = VString . dispVersion

data Distribution = Stretch | Buster | Xenial | Bionic
  deriving (Show, Eq, Enum, Bounded)

dispDistribution :: Distribution -> String
dispDistribution = map toLower . show

instance Zinza Distribution where
    toType _ = TyString Nothing
    toValue  = VString . dispDistribution

data Params = Params
    { pTag          :: String
    , pDistribution :: Distribution
    , pIsDebian     :: Bool
    , pGhcVersion   :: Version
    , pSlim         :: Bool
    , pStack        :: Bool -- autoset
    , pStackVersion :: Version
    , pStackSha256  :: String
    }
  deriving (Show, Generic)

instance Zinza Params where
    toType  = genericToTypeSFP
    toValue = genericToValueSFP
