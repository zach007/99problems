module RemoveNth where

removeNth :: Int -> [a] -> (a,[a])
removeNth n xs = (xs!!(n-1),helper (n-1) xs)
  where helper n xs = (take n xs) ++ (drop 1 $ (drop n xs))
