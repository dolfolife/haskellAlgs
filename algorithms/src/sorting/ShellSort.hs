{-# LANGUAGE TemplateHaskell #-}

module ShellSort(shellSort) where

import Data.List

blocks :: [Int] -> [Int]
blocks xs = takeWhile (< length xs) $ iterate (succ.(3*)) 1

flatCol :: [[Int]] -> [Int]
flatCol = concat . transpose

columns subArray k = flatCol . subArray . transpose
                     . takeWhile (not . null) . unfoldr (Just . splitAt k)

shellSort :: [Int] -> [Int]
shellSort xs = foldr (columns (map (foldr insert []))) xs (blocks xs)
