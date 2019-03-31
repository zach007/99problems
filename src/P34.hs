module P34 where

import P33

totient :: Int -> Int
totient 1 = 1
totient a = length $ filter(==True) $ map (coprime a) b
  where b = [1..a]
