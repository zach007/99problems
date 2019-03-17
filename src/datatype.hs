module DataTypeDemo where

import qualified Data.Map as Map

--输入一个箱子编号，给你密码，如果箱子被使用，则告知taken,如果没有此编号则稿子illegal code,否则告知密码，使用数据结构map

data BoxState = Free | Taken deriving (Show,Eq)

type Code = String

type BoxMap = Map.Map Int (Code,BoxState)

checkBox :: Int -> BoxMap -> Either Code String
checkBox boxNum mymap = case Map.lookup boxNum mymap of
                          Nothing -> Right $ "there is no such box ：" ++  show boxNum
                          Just(code,state) -> if state /= Taken
                                                 then Left $ code
                                                 else Right $ "the box has been taken :" ++ show boxNum

--if no this statment ,if will get error :     • Couldn't match type ‘Integer’ with ‘Int’
mapdata :: BoxMap
mapdata = Map.fromList [(1,("1",Taken)),(2,("2",Taken)),(3,("3",Free)),(4,("4",Free)),(5,("5",Taken))]
