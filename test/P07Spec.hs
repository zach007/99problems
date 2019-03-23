module P07Spec where

import Test.Hspec
import P07

main :: IO()
main = hspec spec

spec :: Spec
spec = do 
  describe "nested list test" $ do
    it "should return [5] when there is only one Elem 5" $ do 
      flatten (Elem 5) `shouldBe` [5] 
    it "should return [1,2,3,4,5] when there is List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]]" $ do
      flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]]) `shouldBe` [1,2,3,4,5]
