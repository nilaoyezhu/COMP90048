-- file: l03/search_bst.hs
search_bst :: Tree -> String -> Maybe Int
search_bst Leaf _ = Nothing
search_bst (Node k v l r) sk =
    if sk == k then
        Just v
    else if sk < k then
        search_bst l sk
    else
        search_bst r sk
data Tree = Leaf | Node String Int Tree Tree
            deriving (Eq, Ord)