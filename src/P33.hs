module P33 where

import P32

coprime :: Int -> Int -> Bool
coprime a b
  | mygcd a b == 1 = True
  | otherwise = False

