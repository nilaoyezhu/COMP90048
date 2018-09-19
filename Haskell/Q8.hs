-- file: Workshop1/Q8

getNthElem 1 xs = head xs
getNthElem n [] =
   error "n is greater than list length in getNthElem"
getNthElem n xs
   | n < 1     = error "n is non-positive in getNthElem"
   | otherwise = getNthElem (n-1) (tail xs)
