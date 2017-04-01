module Range where

range :: Int -> Int -> [Int]
range i j = take (j-i+1) [i..]
