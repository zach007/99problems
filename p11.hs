module EncodeModified where

data Modified  = Multiple Int Char
               | Single Char
                deriving (Show,Eq)

encodeModified :: [Char] -> [Modified]
encodeModified [] = []
encodeModified (x:xs) = let (first, rest) = span (==x) xs
                      in if length first == 0 then Single x : encodeModified rest else Multiple (1+length first) x : encodeModified rest

