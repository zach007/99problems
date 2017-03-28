module Mylast where

mylast :: [a] -> a
mylast [] = error "empty list"
mylast [x] = x
mylast (_:xs) = mylast xs
