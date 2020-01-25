data Tree = Empty | Node {value::Int, leftTree::Tree, rightTree::Tree} deriving (Show, Eq)


total :: Tree -> Int
total Empty = 0
total n = (value n) + total(leftTree n) + total(rightTree n)

-- a = Node 1 (Node 2 Empty Empty) (Node 3 (Node 4 Empty Empty) Empty)