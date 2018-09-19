-- file: ch04/foldlSum.hs
foldlSum xs = foldl step 0 xs
    where step acc x = acc + x

niceSum :: [Integer] -> Integer
niceSum xs = foldl (+) 0 xs

niceSumFoldr :: [Int] -> Int
niceSumFoldr xs = foldr (+) 0 xs

myFilter p xs = foldr step [] xs
    where step x ys | p x       = x:ys
	                | otherwise = ys