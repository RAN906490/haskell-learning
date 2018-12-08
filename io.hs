import Data.List
import System.IO

sayHello = do
  putStrLn "What is your name"
  name <- getLine
  putStrLn $ "Hello" ++ name
-- putStrLn("Hello" ++ name)  and putStrLn $ "Hello" ++ name  have same effect

writeToFile = do
  theFile <- openFile "text.txt" WriteMode
  hPutStrLn theFile ("Random Line of Text")
  hClose theFile

readFromFile = do
  theFile2 <- openFile "text.txt" ReadMode
  contents <- hGetContents theFile2
  putStr contents
  hClose theFile2

fibs = 1:1:zipWith (+) fibs (tail fibs)
nines = 9:nines

f = take 5 nines

fib = 1:1:[a+b| (a,b) <-  zip fib $ tail fib]
{-

1 1
1 [1 2]
1 1 [2 3]
1 1 2 [3 5]
1 1 2 3 [5 8]

-}
