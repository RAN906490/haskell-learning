import Data.List
import System.IO

data Customer = Customer String String Double
  deriving Show

tomSmith :: Customer
tomSmith = Customer "Dom Jom" "123 MAin" 20.40

getBalance :: Customer -> Double
getBalance (Customer _ _ b) = b

data Shape = Circle Float Float Float | Rectangle  Float Float Float Float
  deriving Show

area :: Shape -> Float
area (Circle _ _ r) = pi * r * r
--area (Rectangle x y x2 y2) = (abs(x2-x) * abs(y2-y))
area (Rectangle x y x2 y2) = (abs $ x2-x) * (abs $ y2-y )

areaOfCircle = area (Circle 2 3 4)
areaOfRectangle = area (Rectangle 2 3 4 5)

data Employee = Employee {
  name:: String,
  position :: String,
  idNum :: Int
} deriving (Eq, Show)

samSmith = Employee { name = "Sam Smith", position= "Supreisor", idNum= 423432}
pamSmith = Employee { name= "Pam Smith", position= "Snr Supreisor", idNum= 444442}

isSamPam = samSmith == pamSmith
pamSmithData =show pamSmith

data ShirtSize = S | M | L
instance Eq ShirtSize where
  S == S = True
  S == M = True
  M == M = True
  L == L = True
  _ == _ = False

instance Show ShirtSize where
  show S = "Small"
  show M = "Med"
  show L = "Large"

class MyEq a where
  areEqual :: a -> a -> Bool

instance MyEq ShirtSize where
  areEqual S S = True
  areEqual M M = True
  areEqual L L = True
  areEqual _ _ = False
  
smallShirt = S
anotherSmallShirt = S
medShirt = M
