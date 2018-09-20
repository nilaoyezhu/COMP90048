-- file: ch04/IntParse.hs
import Data.Char  -- we'll need digitToInt shortly

asInt :: String -> Int
asInt xs = loop 0 xs

loop :: Int -> String -> Int
loop acc [] = acc
loop acc (x:xs) = let acc' = acc * 10 + digitToInt x
                  in loop acc' xs

square :: [Double] -> [Double]

square (x:xs) = x * x : square xs
square []     = []

upperCase :: String -> String

upperCase (x:xs) = toUpper x : upperCase xs
upperCase [] = []

square2 xs = map square1 xs
    where square1 x = x * x
upperCase2 xs = map toUpper xs