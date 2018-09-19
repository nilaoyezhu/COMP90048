-- file: Workshop1/Q7

reverseList [] = []
reverseList (x:xs) = (reverseList xs) ++ [x]