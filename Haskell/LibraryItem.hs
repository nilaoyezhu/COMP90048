data LibraryItem = Book Integer String String | Periodicals Integer String Period
                   deriving Show
data Period = Days Integer | Months Integer
              deriving Show