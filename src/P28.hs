module P28 where

import Data.List
import Data.Ord(comparing)

{-
  functional language is like a factory or a black box,you just put
  those data into a function and it will return something you want ,
  so that's why we saied functional langauage tell computer
  "what to do it
  and 命令式 langauage tell computer
  "how to do it "
-}

{--
  this is a function compare : compare 1 2 and it will return Ord like Lt
  and the another function comparing : it take a function and return Ord,like
  comparing length ["abc","a"]
  so the xs must have the function length
  and comparing is alwarys using with xxBy function family
--}
lsort :: [[a]] -> [[a]]
lsort xs = sortBy (comparing length) xs

{--
  lambuda is not that readable and it always can be replaced  by val using let and where
--}

lengthSort :: [[a]] -> [[a]]
lengthSort = sortBy (\xs ys -> compare (length xs) (length ys) )



lengthSortNoLambda :: [[a]] -> [[a]]
lengthSortNoLambda zz = sortBy comparefun zz
                     where comparefun xs ys = compare (length xs) (length ys)
