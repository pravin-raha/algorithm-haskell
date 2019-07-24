module Search.BinarySearch (search) where

search :: [Integer] -> Integer -> Bool
search [] _ = False
search [x] key = x == key
search xs key = let mid = (length xs) `quot` 2
                    (left, right) = splitAt mid xs
                in if (xs !! mid > key)
                   then search left key
                   else if (xs !! mid < key)
                        then search right key
                        else True



                    