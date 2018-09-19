filterNum :: [Int] -> [Int]
filterNum []   = []
filterNum (x:xs) = if x < 0
              then filterNum xs
              else x:filterNum xs