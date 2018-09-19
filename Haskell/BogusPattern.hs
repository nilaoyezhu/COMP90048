-- file: ch03/BogusPattern.hs
data Fruit = Apple | Orange | None
             deriving (Show)

--apple = "apple"

--orange = "orange"

--whichFruit :: String -> Fruit

--whichFruit f = case f of
--                 apple -> Apple
--                 orange -> Orange

--equational apple = Apple
--equational orange = Orange

betterFruit f = case f of 
                  "apple"  -> Apple
                  "orange" -> Orange
                  _ -> None