module Duplicate where

duplicate :: [a] -> [a]
duplicate [] = []
duplicate (x:xs)  = (take 2 $ repeat x ) ++ duplicate xs
