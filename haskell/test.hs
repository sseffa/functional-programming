drop' 0 xs = xs
drop' _ [] = []
drop' n (x:xs) 
    | n > 0 = drop' (n-1) xs