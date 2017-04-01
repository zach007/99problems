module Repli where

repli :: [a] -> Int -> [a]
repli [] _ = []
repli list 0 = list
repli list a  = map (take a . repeat ) list
