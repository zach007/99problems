module P21 where

insertAt :: a -> [a] -> Int -> [a]
insertAt elem xs n = take x xs ++ [elem] ++ drop x xs
                  where  x= n-1
