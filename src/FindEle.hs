module FindEle where
findEle :: [a] -> Int -> a
findEle xs i 
  | i == length xs = last xs
  | i == 0 = head xs
  | i > length xs = error "out of bound"
  | otherwise = xs !! (i-1)
