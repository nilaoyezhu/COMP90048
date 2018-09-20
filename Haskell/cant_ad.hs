-- file: ch06/cant_ad.hs

data Book = Book
            deriving (Show)
data BookInfo = BookInfo Book
                deriving (Show)