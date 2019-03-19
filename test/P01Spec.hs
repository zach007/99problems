module P01Spec where

import Test.Hspec

what:: IO()
what = hspec spec

spec :: Spec
spec = do
  describe "unit test case" $ do
    it "id function " $
      True `shouldBe` False 
