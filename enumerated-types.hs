import Data.List
import System.IO

data BaseballPlayer = Pitcher
                      | Catcher
                      | Infielder
                      | Outfield
                      deriving Show

barryBands ::  BaseballPlayer -> Bool
barryBands Outfield = True
barryBands _ = False                     
