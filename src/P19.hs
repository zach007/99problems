module P19 where

rotate :: [a] -> Int -> [a]
rotate xs a
  | a == 0 = xs
  | a > 0 = drop a xs ++ take a xs
  | otherwise = drop (length xs + a ) xs ++ take (length xs + a) xs 
