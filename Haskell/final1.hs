-- filed: ch03/final1
import Data.List
computeNo :: [a] -> Int
computeNo []   = 0
computeNo xs = computeNo (tail xs) + 1

computeMean [] = 0
computeMean xs = (sumAll xs) / fromIntegral (length xs)

sumAll [] = 0
sumAll xs = head xs + sumAll (tail xs)

palinDrome xs = xs ++ turnAround xs

turnAround :: [t] -> [t]
turnAround [] = []
turnAround xs = (last xs):turnAround (init xs)

palinInput [] = True
palinInput xs | length xs > 1 && last xs == head xs = palinInput (init (tail xs))
              | length xs == 1                      = True        
              | otherwise                           = False

sortList [] = []
sortList x:xs | length x > length (head xs) = (head xs):(sortList x:(tail xs))
              | otherwise                   = x : (sortList xs)