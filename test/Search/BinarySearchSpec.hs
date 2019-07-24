module Search.BinarySearchSpec where

import           Test.Hspec
import           Search.BinarySearch (search)

spec :: Spec
spec = describe "Binary Search"
  $ do
    it "2 is not present in []" $ search [] 2 `shouldBe` False
    it "2 is not present in [5]" $ search [5] 2 `shouldBe` False
    it "2 is present in [2]" $ search [2] 2 `shouldBe` True
    it "1 is present in [1, 2, 3, 4, 5]" $ search [1, 2, 3, 4, 5] 1 `shouldBe` True
    it "5 is present in [1, 2, 3, 4, 5]" $ search [1, 2, 3, 4, 5] 5 `shouldBe` True
    it "2 is present in [1, 2, 3, 4, 5]" $ search [1, 2, 3, 4, 5] 2 `shouldBe` True
    it "8 is not present in [1, 2, 3, 4, 5]" $ search [1, 2, 3, 4, 5] 8 `shouldBe` False
