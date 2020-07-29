module Main where

import Data.Time.Clock.POSIX (getPOSIXTime)
import Foreign.Marshal.Unsafe (unsafeLocalState)
import Rng
import System.Random

randomNumber :: Int
randomNumber = do
  let currentTimeStamp = (round . (* 1000)) <$> getPOSIXTime -- get current time as UNIX timestamp
  let seed = mkStdGen $ unsafeLocalState currentTimeStamp -- IO Int -> Int
  let (number, nextGen) = getRandom 1 6 seed
  number

main :: IO ()
main = do
  print "Random number is: "
  print randomNumber
