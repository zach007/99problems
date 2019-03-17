module Compress where

mycompress :: Eq a => [a] -> [a]
mycompress [] = []
mycompress [x] = [x]
mycompress [x,y] = if x == y then [y] else [x,y]
mycompress (x:y:xs) = if x == y then mycompress (y:xs) else x : mycompress (y:xs)
