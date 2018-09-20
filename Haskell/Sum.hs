-- file: ch04/Sum.hs
mySum hs = helper 0 hs
    where helper acc (x:xs) = helper (acc + x) xs
          helper acc []     = acc

foldlSum hs = foldl step 0 hs
    where step acc x = acc + x

niceSum :: [Integer] -> Integer
niceSum xs = foldl (+) 0 xs