removeAt :: Int -> [a] -> [a]
removeAt 1 (x:xs) = xs
removeAt n (x:xs) = x : removeAt (n - 1) xs