module P23 where

import System.Random

--this is just implement the Char but not for the Int Example
rmd_selected :: [Char] -> Int -> IO[Char]
rmd_selected xs n = do
      gen <- getStdGen
      return $ take n (randomRs ('a','z') gen)

superRmd :: [a] -> Int -> IO [a]
superRmd xs n = do
    gen <- newStdGen
    return $ take n $ [xs !! p | p <- randomRs (0, (length xs) -1) gen]

