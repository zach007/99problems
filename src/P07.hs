{-# LANGUAGE DeriveFunctor, DeriveFoldable #-}
module P07 where
data NestedList a = Elem a | List [NestedList a] deriving (Foldable) 


flatten :: NestedList a -> [a]
flatten (Elem a)= [a]

