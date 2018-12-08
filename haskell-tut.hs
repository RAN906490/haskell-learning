-- comment
{-
 coms
-}

import Data.List
import System.IO

-- Int -2^63 2^63
maxInt = maxBound :: Int
minInt = minBound :: Int
-- Integer
-- Float
-- Double 11 point precision
bigFloat  = 3.99999999999 + 0.00000000000000000000000000005
-- Bool
-- Char '
-- Tuple
-- Num Floats Integer Double
always5 ::Int
always5 = 5

sumOfNums = sum [1..1000]
list = [1..1000]

modEx = mod 5 3
modEx2 = 5 `mod` 3
regNumx = 5 +(-1)

num9 = 9 :: Int
sqrtOf9  = sqrt(fromIntegral num9)

primeNumbers = [3,5,7,11]
morePrimes = primeNumbers ++ [17,19]
-- need to add [] to end the list
favNums = 2 : 7 : 21 :[]

multilist = [[1,3,5],[7,11,3]]

morePrimes2 = 2 : morePrimes
lengthPrime = length morePrimes2
firstPrime = head morePrimes2
lastPrime = last morePrimes2
first3 = take 3  morePrimes2
removePrimes = drop 3 morePrimes2
primeInit = init morePrimes2
is7InList = 7 `elem` morePrimes2
maxPrime = maximum morePrimes2
minPrime = minimum morePrimes2

newList    = product morePrimes2
sumPrimes  = sum morePrimes2
sortedList = sort [43,653,6,32,2]

evenList = [2,4..20]
letterList = ['A', 'C'..'Z']

inifinitPow10 = [10,20..]

many2s = take 10 (repeat 2)
many3s = replicate 10 3
cyclist = take 20 (cycle[1,2,5,8,9])
listItems2 = [ x * 2 | x<- [10..20]]
listItems3 = [x*3|x<-[1..10], x*3 < 24]
divBy9N13 = [x| x<-[1..500], x `mod` 13 == 0, x `mod` 9 == 0 ]

sumOfList = zipWith (+) [1,2,3,4,5] [6,7,8,9,10]

filteredList = filter (>5) morePrimes2
eventsUpto200 = takeWhile(<=200) [2,4..]

multiOfList = foldl (*) 10 [2,3,4,5,6,7,8,9]
multiOfListR = foldr (*) 1 [2,3,4,5,6,7,8,9]
pow3List = [3^n | n<-[1..10]]

multiplicationTable = [[x*y| y<-[1..10]]| x<-[1..10]]

randTuple = (1, "Random Tuple")
bobSmith = ("Bob Smith", 53)
bobsName = fst bobSmith
bobsAge = snd bobSmith
names = ["ravi", "siva", "teja"]
addresses = ["9 spririt ve", "34 fsss ss", "99 dsew fdsfds"]
nameAddress = zip names addresses
