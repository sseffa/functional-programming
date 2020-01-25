sp :: [a] -> Int -> ([a], [a])
sp xs 0 = ([],xs)
sp [] _ = ([],[])

sp (x:xs) n
  | n > 0 = (x:fs, ls)
    where
    (fs, ls) = sp xs (n-1)