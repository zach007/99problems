module LastButOne where

lastButOne :: [a] -> a
lastButOne [] = error "empty list"
lastButOne [x] = error "length must bigger than 1"
lastButOne [x,y] = x
lastButOne (x:xs) = lastButOne (tail(x:xs))
