module P06 where

isP :: Eq a => [a] -> Bool
isP list = (==) list (reverse list)
