isSorted' [x] = True
isSorted' (x:xs)
    | x <= head xs = isSorted' xs
    | otherwise = False

-- isSorted [1,2,3,4]
-- True