{-# LANGUAGE TemplateHaskell #-}

module Fibonacci(fib) where

import Data.List

fib :: [Int]
fib = 1 : 1 : [a + b | (a,b) <- zip fib (tail fib)]
