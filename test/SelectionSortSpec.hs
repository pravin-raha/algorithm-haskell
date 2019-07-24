module SelectionSortSpec where

import           Test.Hspec
import           Sort.SelectionSort (sort)

spec :: Spec
spec = describe "Sorting"
  $ do
    it "[5, 3, 2, 1] after sort  [1, 2, 3, 5]"
      $ sort [5, 3, 2, 1] == [1, 2, 3, 5] `shouldBe` True
    it "[1, 2, 3, 5] after sort  [1, 2, 3, 5]"
      $ sort [5, 3, 2, 1] == [1, 2, 3, 5] `shouldBe` True
    it "[2, 1, 4, 5, 1, 8, 9, 4, 13, 34, 2, 1] after sort [1, 2, 3, 5]"
      $ sort [2, 1, 4, 5, 1, 8, 9, 4, 13, 34, 2, 1]
      == [1, 1, 1, 2, 2, 4, 4, 5, 8, 9, 13, 34] `shouldBe` True