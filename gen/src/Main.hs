{-# LANGUAGE OverloadedStrings #-}
module Main (main) where

import Control.Applicative        ((<**>))
import Control.Monad              (join)
import Control.Monad.Trans.Writer (execWriter, tell)
import Data.Aeson                 (Value (..), object, (.=))
import Data.Maybe                 (fromMaybe)
import Distribution.Text          (display, simpleParse)
import Distribution.Version       (Version, mkVersion)
import System.Environment         (getArgs)

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
  where
    action :: FilePath -> Version -> IO ()
    action tp v = do
        tmpl <- M.compileMustacheFile tp
        T.putStr $ M.renderMustache tmpl $ object
            [ "alexver"  .= ("3.1.7" :: String)
            , "happyver" .= ("1.19.5" :: String)
            , "ghcver"   .= display v
            , "cabalver" .= display cv
            ]
      where
        cv = fromMaybe (mkVersion [2,0]) $ Map.lookup v $ Map.fromList $ execWriter $ do
            mkVersion [8,2,2] ~> mkVersion [2,0]
            mkVersion [8,2,1] ~> mkVersion [2,0]

        k ~> v = tell [(k,v)]


strOption = O.strOption . mconcat
option p  = O.option p . mconcat
