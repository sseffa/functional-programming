crop' (x:xs) i k 
    | i == 1 && k >= 1 = x : crop' xs 1 (k-1)
    | i == 1 && k == 0 = []
    | otherwise = crop' xs (i-1) (k-1)

-- crop' ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h'] 3 7
-- ['c', 'e', 'f', 'g']