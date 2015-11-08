
module SequenceTest(sequenceTest) where

import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)
import Fibonacci

sequenceTest :: IO ()
sequenceTest = hspec $ do
  describe "Fibonacci" $ do
    it "Fibonacci number 20 is 10946" $ do
      fib !! 20 `shouldBe` (10946 :: Int)

    it "The first 10 fibonacci numbers are [1,1,2,3,5,8,13,21,35,65]" $ do
      take 10 fib  `shouldBe` ([1,1,2,3,5,8,13,21,34,55] :: [Int])
