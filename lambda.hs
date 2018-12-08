module SampFunc( dbl1To10, dblEvenNumber, getClass) where

import Data.List
import System.IO

dbl1To10 = map (\x -> x*2) [1..10]

dblEvenNumber :: Int -> Int
dblEvenNumber y =
  if (y `mod` 2 /= 0)
    then y
    else y * 2

getClass :: Int -> String
getClass n = case n of
  5 -> "dgfdgfd"
  6 -> "gfdgfdgdf"
  otherwise -> "zzzzzz"
