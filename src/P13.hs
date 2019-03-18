module P13 where

data Modified a = Multi Int a | Single a deriving (Eq,Show)
direct :: [a] -> [Modified a]
direct [] = []
--direct (x : xs) = foldr
