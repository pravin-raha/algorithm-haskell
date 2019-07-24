module Sort.SelectionSort (sort) where

import           Data.List (minimum, delete)

sort :: Ord o => [o] -> [o]
sort [] = []
sort xs = let x = minimum xs
          in x:sort (delete x xs)
