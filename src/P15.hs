module P15 where

import Data.List
repli :: [a] -> Int -> [a]
repli xs n = concat $ map (replicate n) xs
