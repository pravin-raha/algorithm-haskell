module Main where
import Control.Monad.State
import Lib
import Stack.Stack

main :: IO ()
main = print $ evalState program []