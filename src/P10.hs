module P10 where

encode :: Eq a => [a] -> [(Int,a)]
encode [] = []
encode (x:xs) = let (first, rest) = span (==x) xs
                in [(1 + length first,x) ] ++ encode rest
