{-# LANGUAGE CPP             #-}
{-# LANGUAGE TemplateHaskell #-}

module Main where

import           System.IO
import           System.Environment
import           ShellSort
import           Test

main :: IO ()

main = do
  test

