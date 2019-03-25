module P17 where

splitByLenght :: [a] -> Int -> ([a],[a])
splitByLenght xs i = (take i xs ,drop i xs)
