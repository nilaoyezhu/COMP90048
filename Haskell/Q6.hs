-- file: Workshop1/Q6

myHead (x:xs) = x
myHead [] = error "Error! fuck you"
myTail (x:xs) = xs
myTail [] = error "Error! fuck you"