module DropNth where

dropNth :: [a] -> Int -> [a]
dropNth list 0 = list
dropNth list 1 = []
dropNth [] _ = []
dropNth list n = let (first,rest) = splitAt n list
                 in (take (n-1) first) ++ dropNth rest n
