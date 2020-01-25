-- !! operator gives the index 0-based, the problem wants it 1-based
elementAt :: [a] -> Int -> a
elementAt x i = x !! (i - 1)