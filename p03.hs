findEle :: [a] -> b -> a
findEle [] _ = error "empty list"
findEle (_:xs) index
  | length (_:xs) < index = error"out of bounds"
  | length (_:xs) = (index-1)= xs 
  | otherwise findEle xs index
