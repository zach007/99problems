module Prime where

isPrime :: Int -> Bool
isPrime 1 = False
isPrime 2 = True
isPrime 3 = True
isPrime n = factor n == [n,1]
  where factor a = [x | x <- [1..n], mod a x ==0 ]
  
