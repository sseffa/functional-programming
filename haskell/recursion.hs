sum' :: Num a => [a] -> a
sum' []     = 0
sum' (x:xs) = x + sum' xs

minList :: [Int] -> Int
minList (x:[]) = x
minList (x:xs) = x `min` minList xs

length' :: [a] -> Int           -- function type
length' [] = 0                  -- base case
length' (x:xs) = 1 + length' xs  -- recursion case

repeatN :: Int -> a -> [a]
repeatN 0 x  = []
repeatN n x  = x : repeatN (n - 1) x

-- suffixes "Hello"  ⇒  ["Hello", "ello", "llo", "lo", "o"]
suffixes :: String -> [String]
suffixes ""  = []
suffixes str = str : suffixes (tail str)

allSquares :: Num a => [a] -> [a]
allSquares []       = []
allSquares (x : xs) = x * x : allSquares xs

elementAt (_:xs) k
  | k < 1           = error "Index out of bounds"
  | otherwise       = elementAt xs (k - 1)

quicksort :: (Ord a) => [a] -> [a]  
quicksort [] = []  
quicksort (x:xs) =   
    let smallerSorted = quicksort [a | a <- xs, a <= x]  
        biggerSorted = quicksort [a | a <- xs, a > x]  
    in  smallerSorted ++ [x] ++ biggerSorted 