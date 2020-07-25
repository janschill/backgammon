module Rng (getRandom) where

import System.Random

getRandom :: (RandomGen g) => Int -> Int -> g -> (Int, g)
getRandom lo hi g = randomR (lo, hi) g
