module DecodeModified where

data Modified a = Multi Int a | Single a

decode :: [Modified a] -> [a]
decode [] = []
decode (Multi a b : xs ) = (take a $ repeat b )  ++ decode xs
decode (Single c : xs) = c : decode xs
