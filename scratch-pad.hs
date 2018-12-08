import Data.List
import System.IO

removeUppercase :: [Char] -> [Char]
removeUppercase st= [c| c <- st, c `elem` ['a'..'z'] ]

-- thats what it does don't need following type declaration
-- bcoz it applies partial application
--addThree :: Int -> (Int -> (Int -> Int))
addThree x y z = x + y + z
addThree4 = addThree 4
addThree45 = addThree4 5
addThree456 = addThree45 6


length' [] = 0
length' (_:xs) = 1 + length' xs

lucky :: Int -> String
lucky _ = "baaaaaaaa"
lucky 7 = "woooooo"

cylinder :: (RealFloat a) => a -> a -> a
cylinder r h =
    let sideArea = 2 * pi * r * h
        topArea = pi * r ^2
    in  sideArea + 2 * topArea

cylinder2 :: (RealFloat a) => a -> a -> a
cylinder2 r h = sideArea + 2 * topArea
    where sideArea = 2 * pi * r * h
          topArea = pi * r ^2


take' :: (Num n, Ord n) => n -> [i] -> [i]
take' n _
  | n <= 0 = []
take' _ [] = []
take' n (x:xs)  = x : take' (n-1) xs

replicate' :: (Num i, Ord i) => i -> n -> [n]
replicate' i n
  | i<=0 = []
  | otherwise  = n : replicate' (i-1) n

reverse' :: [n] -> [n]
reverse' [] = []
reverse' (x:xs) = reverse'(xs) ++ [x]

zip' :: [a] -> [b] -> [(a,b)]
zip' _ [] = []
zip' [] _ = []
zip' (x:xs) (y:ys) = (x,y):zip' xs ys


result  = map (map((map (+3)))) [[[2],[8,9]],[[10,8],[9]],[[1,2,3],[4,5]]]

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs)
  | p x  = x : filter p xs
  | otherwise = filter p xs

--head(filter (\x-> x `mod` 3289 == 0)[10000,9999..])
--oddSquares = filter (filter(\x-> x `mod` 2 == 0) (map (^2 )[1..]))

chain :: (Integral a) => a -> [a]
chain 1 = [1]
chain x
  | odd x  = x:chain((x * 3)+1)
  | even x = x:chain(x `div` 2)

numOfLongChains = length(filter (isLong) (map (chain) [1..100]))
  where isLong xs = length xs > 5

sum' :: (Num a) => [a] -> a
sum' xs = foldl (+) 0 xs

mapFoldr :: (a->b)-> [a] -> [b]
mapFoldr f (x:xs) = foldr (\x acc -> f x : acc ) [] xs

mapFoldl :: (a->b)-> [a] -> [b]
mapFoldl f (x:xs) = foldl (\acc x -> acc ++ [f x] ) [] xs

reverseFoldl ::  [a] -> [a]
reverseFoldl xs = foldl (\acc x -> x : acc ) [] xs

reverseFoldr ::  [a] -> [a]
reverseFoldr xs = foldr identity [] xs
  where identity = (\x acc -> acc  ++ [x])

head' ::[a] ->a
head' = foldr1 (\x _ -> x)

last' ::[a] ->a
last' = foldl1 (\_ x -> x)
