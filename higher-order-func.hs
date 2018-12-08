import Data.List
import System.IO

times4 :: Int -> Int
times4  x = x * 4

listTimes4 = map times4 [1,2,3,4,5]

-- following shoes how map works above
multBy4 :: [Int] -> [Int]
multBy4 []  = []
multBy4 (x:xs) = times4 x : multBy4(xs)

areStringsEq :: [Char] -> [Char] -> Bool
areStringsEq [] [] = True
areStringsEq (x:xs) (y:ys) = x == y && areStringsEq xs ys
areStringsEq _ _ = False

-- receive function as arg
doMult :: (Int -> Int) -> Int
doMult func = func 3

num3Times4 = doMult times4

-- return functions 
getAddFunc :: Int -> (Int -> Int)
getAddFunc x y = x + y

-- this is (Int -> Int) , return '3+y'
add3 = getAddFunc 3

fourPlus3 = add3 4

add3ToList = map add3 [1..7]
