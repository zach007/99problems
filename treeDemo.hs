module TreeDemo where

data Tree a = EmptyTree | Node a (Tree a) (Tree a)  deriving (Show,Read,Eq)

-- Haskell 只能决定往左走还是往右走到的时候插入一颗树 a->Tree a -> Tree a 并放回一个包含新树的树
singleTree :: a -> Tree a
singleTree x = Node x EmptyTree EmptyTree

treeInsert :: a-> Tree a -> Tree a
treeInsert a EmptyTree = singleTree
treeInsert x (Node a left right ) =
    | guard x == a = Node xleft right
    | guard x < a = Node a (treeInsert x left) right
    | guard x >a =  Node a left (treeInsert x right)
