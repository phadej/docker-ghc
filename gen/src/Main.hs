{-# LANGUAGE OverloadedStrings #-}
module Main (main) where

import Control.Applicative        ((<**>))
import Control.Monad              (join)
import Control.Monad.Trans.Writer (execWriter, tell)
import Data.Aeson                 (Value (..), object, (.=))
import Data.Maybe                 (fromMaybe)
import Distribution.Text          (display, simpleParse)
import Distribution.Version       (Version, mkVersion)
import System.Directory           (createDirectoryIfMissing)
import System.Environment         (getArgs)
import System.FilePath            (takeDirectory)

import qualified Data.Map            as Map
import qualified Data.Text.Lazy.IO   as T
import qualified Options.Applicative as O
import qualified Text.Microstache    as M

main :: IO ()
main = join $ O.execParser $ O.info (parser <**> O.helper) O.fullDesc

parser :: O.Parser (IO ())
parser = O.subparser $ mconcat
    [ O.command "hvr-ppa" $ O.info (hvrPpa <**> O.helper) $ O.progDesc "HVR-PPA based images"
    ]

hvrPpa :: O.Parser (IO ())
hvrPpa = action
    <$> strOption
        [ O.long "template"
        , O.help "Template file"
        ]
    <*> option (O.maybeReader simpleParse)
        [ O.long "with-compiler"
        , O.help "Compiler version"
        ]
    <*> strOption
        [ O.long "output"
        , O.help "Output file"
        ]
    <*> strOption
        [ O.long "codename"
        , O.help "Distribution version codename: xenial, bionic"
        ]
  where
    action :: FilePath -> Version -> FilePath -> String -> IO ()
    action tp v out codename = do
        createDirectoryIfMissing True $ takeDirectory out
        tmpl <- M.compileMustacheFile tp
        T.writeFile out $ M.renderMustache tmpl $ object
            [ "alexver"  .= ("3.1.7" :: String)
            , "happyver" .= ("1.19.5" :: String)
            , "ghcver"   .= display v
            , "cabalver" .= display cv
            , "codename" .= codename
            ]
      where
        cv = fromMaybe (mkVersion [2,0]) $ Map.lookup v $ Map.fromList $ execWriter $ do
            mkVersion [8,4,2]  ~> mkVersion [2,2]
            mkVersion [8,2,2]  ~> mkVersion [2,0]
            mkVersion [8,2,1]  ~> mkVersion [2,0]
            mkVersion [7,10,3] ~> mkVersion [1,22]
            mkVersion [7,10,2] ~> mkVersion [1,22]
            mkVersion [7,10,1] ~> mkVersion [1,22]
            mkVersion [7,8,4]  ~> mkVersion [1,18]
            mkVersion [7,6,3]  ~> mkVersion [1,16]
            mkVersion [7,4,2]  ~> mkVersion [1,16]

        k ~> v = tell [(k,v)]


strOption = O.strOption . mconcat
option p  = O.option p . mconcat
