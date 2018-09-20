-- file: ch03/ListADT.hs
data List a = Cons a (List a)
            | Nil
              deriving (Show)
fromList (x:xs) = Cons x (fromList xs)
fromList [] = Nil

listFrom (Cons x xs) = x : listFrom xs
listFrom Nil         = []