-- file Lecture2/iota.hs

iota n = if n == 0
         then []
         else iota (n - 1) ++ [n]