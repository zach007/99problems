module P24 where

import System.Random

diff_select :: Int -> Int -> IO [Int]
diff_select n bound = do
                gen <- getStdGen
                return $ take n $ randomRs (0,bound) (mkStdGen 100)
