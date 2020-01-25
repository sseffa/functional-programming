-- 4
dontRepeat :: Eq a=>[a] -> [a]
dontRepeat (a:as) 
    |length as == 1 = as
    |a == (head as) = dontRepeat as
    |otherwise = [a]++dontRepeat as

-- 4
remDup :: [Int] -> [Int]
remDup [] = []
remDup (x:xs) = x : (remDup (remove x xs))
    where
        remove :: Int -> [Int] -> [Int]
        remove x [] = []
        remove x (y:ys)
            | x == y = remove x ys
            | otherwise = y:(remove x ys)


-- 3   ???
dropEvery :: [a] -> Int -> [a]
dropEvery xs n
  | length xs < n = xs
  | otherwise     = take (n-1) xs ++ dropEvery (drop n xs) n


-- 3 

kaldir [] a = []
kaldir xs a
 | ((length xs)+2) `mod` a == 0 =  kaldir (tail xs) a
 | otherwise = (head xs) : (kaldir (tail xs) a)

-- 2
-- rotate ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h'] 3
rotate :: [a] -> Int -> [a]
rotate [] _ = []
rotate x 0 = x
rotate x y
  | y > 0 = rotate (tail x ++ [head x]) (y-1)
  | otherwise = rotate (last x : init x) (y+1)

-- 5
combine [][]=[]
combine [xs][]=[]
combine [][ys]=[]
combine xs ys = (head xs, head ys):(combine (tail xs) (tail ys))

--6
data Tree = Empty | Node {value::Int, leftTree::Tree, rightTree::Tree} deriving (Show, Eq)


total :: Tree -> Int
total Empty = 0
total n = 1 + total(leftTree n) + total(rightTree n)

maxElement :: Tree -> Int
maxElement Empty = 0
maxElement (Node x Empty r) = max x (maxElement r)
maxElement (Node x l Empty) = max x (maxElement l)
maxElement (Node x l r) = maximum [x, maxElement l, maxElement r]

-- a = Node 1 (Node 2 Empty Empty) (Node 3 (Node 4 Empty Empty) Empty)