data TisAnInteger = TisAnInteger
instance Eq TisAnInteger where
  (==) TisAnInteger TisAnInteger = True

data TwoIntegers = Two Integer Integer
instance Eq TwoIntegers where
  (==) (Two a b) (Two c d) = a == c && b == d

data StringOrInt = TisAnInt Int | TisAString String
instance Eq StringOrInt where
  (==) (TisAnInt a) (TisAnInt b) = a == b
  (==) (TisAString a) (TisAString b) = a == b
  (==) _ _ = False

-- data Pair a = Pair a a
-- instance Eq Pair where
--   (==) (Pair a) (Pair b) = a == b

-- data Tuple a b = Tuple a b
-- instance Eq Tuple where
--   (==) (Tuple a b) (Tuple c d) = a == c && b == d

data Which a = ThisOne a | ThatOne a
instance Eq a => Eq (Which a) where
  (==) (ThisOne a) (ThisOne b) = a == b
  (==) (ThatOne a) (ThatOne b) = a == b
  (==) _ _ = False

data EitherOr a b = Hello a | Goodbye b
instance Eq (a, b) => Eq (EitherOr a b) where
  (==) (Hello a) (Hello b) = a == b
  (==) (Goodbye a) (Goodbye b) = a == b
  (==) _ _ = False
