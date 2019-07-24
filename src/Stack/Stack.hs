module Stack.Stack where

import Control.Monad.State

type Stack = [Int]

empty :: Stack
empty = []

pop :: State Stack Int
pop = state $ \(x : xs) -> (x, xs)

push :: Int -> State Stack ()
push n = state $ \xs -> ((), n : xs)

peek :: State Stack Int
peek = state $ \(x : xs) -> (x, x : xs)

program :: State Stack Int
program = do
    push 10
    push 20
    push 30
    a <- pop
    b <- pop
    push (a + b)
    peek
