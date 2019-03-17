module CommonDivisor where

grateCommonDivisor:: Int -> Int -> Int 
--grateCommonDivisor a b = maximum $ combineList $ (selfCombine a) (selfCombine b)
grateCommonDivisor a b = maximum $ combineList (selfCombine a) (selfCombine b)

combineList :: [Int]  -> [Int] ->[Int]
combineList xs ys =  xs ++  filter(`notElem` xs) ys 

selfCombine :: Int -> [Int]
selfCombine a = [x | x <-[1..a] , mod a x == 0]
