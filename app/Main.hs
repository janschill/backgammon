module Main where

import Rng
import System.Random

main :: IO ()
main = do
  let init = mkStdGen 11
  let (number, nextGen) = getRandom 1 6 init
  print number
