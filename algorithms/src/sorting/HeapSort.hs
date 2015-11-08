{-# LANGUAGE TemplateHaskell #-}

------------------------------------------------------------------------------------------------
-- Source reference
------------------------------------------------------------------------------------------------
-- http://hackage.haskell.org/package/fgl-5.5.2.3/docs/src/Data-Graph-Inductive-Internal-Heap.html
------------------------------------------------------------------------------------------------

module HeapSort(heapSort) where

import Data.Graph.Inductive.Internal.Heap

buildHeap :: Ord a => [(a,b)] -> Heap a b
buildHeap = foldr insert Empty

flatHeap :: Ord a => Heap a b -> [(a,b)]
flatHeap Empty = []
flatHeap x = (findMin x) : (flatHeap (deleteMin x))

heapSort :: Ord a => [a] -> [a]
heapSort = (map fst) . flatHeap . buildHeap . map (\x->(x,x))

