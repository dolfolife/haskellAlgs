
module SortingTest(sortingTest) where

import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)
import ShellSort
import HeapSort

sortingTest :: IO ()
sortingTest = hspec $ do
  describe "ShellSort" $ do
    it "return empty list if passed an empty list" $ do
      shellSort [] `shouldBe` ([] :: [Int])

    it "return the same element list if passed a single element list" $ do
      shellSort [1] `shouldBe` ([1] :: [Int])

    it "returns a sorted list" $
      shellSort [3,4,5,2,1] `shouldBe` ([1,2,3,4,5] :: [Int])

  describe "HeapSort" $ do
    it "return empty list if passed an empty list" $ do
      heapSort [] `shouldBe` ([] :: [Int])

    it "return the same element list if passed a single element list" $ do
      heapSort [1] `shouldBe` ([1] :: [Int])

    it "returns a sorted list" $
      heapSort [3,4,5,2,1] `shouldBe` ([1,2,3,4,5] :: [Int])
