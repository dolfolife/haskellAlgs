{-# LANGUAGE CPP             #-}
{-# LANGUAGE TemplateHaskell #-}

module Main where

import           System.IO
import           System.Environment
import           SortingTest
import           SequenceTest

main :: IO ()

main = do
  sortingTest
  sequenceTest

