module P32 where


-- a is large than b 
mygcd :: Int -> Int -> Int
mygcd a b
  | mod a b == 0  = b
  | otherwise =  gcd b (mod a b) 
