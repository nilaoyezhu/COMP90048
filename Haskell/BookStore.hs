-- file ch03/BookStore.hs

data BookInfo = Book Int String [String]
                deriving (Show)
type CustomerID = Int
type ReviewBody = String

-- We will introduce the CustomID type shortly.

data BookReview = BookReview BookInfo CustomerID String
data BetterReview = BetterReview BookInfo CustomerID ReviewBody
type BookRecord = (BookInfo, BookReview)

type CardHolder = String
type CardNumber = String
type Address = [String]
data BillingInfo = CreditCard CardNumber CardHolder Address
                 | CashOnDelivery
                 | Invoice CustomerID
                   deriving (Show)

nicerID      (Book id _     _      ) = id
nicerTitle   (Book _  title _      ) = title
nicerAuthors (Book _  _     authors) = authors

data Customer = Customer {
      customerID      :: CustomerID,
      customerName    :: String,
      customerAddress :: Address
      } deriving (Show)

customer1 = Customer 271828 "J.R. Hacker"
            ["255 Syntax Ct", "Milpitas, CA 95134", "USA"]

customer2 = Customer {
      customerID = 271828,
      customerName = "Jane Q. Citizen",
      customerAddress = ["1048576 Disk Drive", "Milpitas, CA 95134", "USA"]
      }