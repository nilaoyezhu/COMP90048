data Suit = Club | Diamond | Heart | Spade
deriving (Show, Eq, Ord)
data Card = Card Suit Rank
deriving (Ord, Show)