module P02Spec where
import Test.Hspec

main :: IO()
main = hspec spec

spec :: Spec
spec = do
  describe "unit test case" $ do
    it "id function " $
      True `shouldBe` True 
