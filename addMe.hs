import Data.List
import System.IO

addMe :: Int -> Int -> Int

-- funcion cannot begin with upper case letter
addMe x y  = x+y


sumMe  x y  = x+y

addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuples (x,y) (x2,y2) = (x+x2, y+y2)

whatAge :: Int -> String

whatAge 18 = "u are adulkt"
whatAge 16 = "you can vote"

factorial :: Int -> Int

factorial 0 = 1
factorial n = n * factorial (n-1)

isOdd :: Int -> Bool
isOdd n
  | n `mod` 2 == 0 = False
  | otherwise = True

isEven :: Int -> Bool
isEven n = n `mod` 2 == 0


-- Guard example '|'
whatGrade :: Int -> String
whatGrade age
  | (age >= 5) && (age <=6) = "Kindergarten"
  | (age >= 6) && (age <=10) = "Eleme"
  | (age >= 10) && (age <=14) = "Middle Kindergarten"
  | (age >= 145) && (age <=18) = "SeniorKindergarten"
  | otherwise = "Go to college"

-- Guard with where
batAvgRating :: Double -> Double -> String
batAvgRating hits atBats
  | avg <= 0.200 = "Terrible Batting average"
  | avg <= 0.250 = "Average Player"
  | avg <= 0.280 = "Good player"
  | otherwise = "Trrific player"
  where avg = hits /atBats

-- ???? [x] vs show x what is the difference
getListItems :: [Int] -> String
getListItems []       = "your list is empty"
getListItems (x:[])   = "Your list starts with " ++ show x
getListItems (x:y:[]) = "Your list starts with " ++ show x ++ " and second item is " ++ show y
getListItems (x:xs)   = "The first item is " ++ show x ++ " and rest are " ++ show xs

getFirstItem :: String -> String
getFirstItem [] = "Empty String"
getFirstItem all@(x:xs) = "First letter in " ++ all ++ " is " ++ show x
