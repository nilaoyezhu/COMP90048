-- File: ch04/isLonger.hs

isLonger :: Int -> String -> Bool
isLonger limit x = length x > limit

concatl :: [[a]] -> [a]
concatl = foldl (++) []

