{-# LANGUAGE CPP             #-}
{-# LANGUAGE TemplateHaskell #-}

module Main where

import           System.IO
import           System.Environment
import           ShellSort
import           Fibonacci
import           SortingTest
import           SequenceTest

main :: IO ()

main = do
  sortingTest
  sequenceTest

