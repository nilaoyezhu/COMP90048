-- file: ch03/BadTree.hs
data Tree a = Node a (Tree a) (Tree a)
            | Empty
              deriving (Show, Eq)

simpleTree = Node "parent" (Node "left child" Empty Empty)
                           (Node "right child" Empty Empty)

--bad_nodesAreSame (Node b _ _) (Node b _ _) = Just b
--bad_nodesAreSame _            _            = Nothing

{-nodesAreSame (Node b _ _) (Node c _ _) = case (Node b _ _) of
                                           (b == c) -> Just b
                                           _        -> Nothing-}
nodesAreSame (Node b _ _) (Node c _ _)
    | b == c  = Just b
nodesAreSame _ _ = Nothing