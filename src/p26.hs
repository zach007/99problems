module Combinations where
import Data.List (tails)

  {-
    function language can defined a value through a function and reuse it

  -}
combinations :: Int -> [a] -> [[a]]
combinations 0 _ = [ [] ]
combinations n xs = do y:xs' <- tails xs
                       ys <- combinations (n-1) xs'
                       return (y : ys)
