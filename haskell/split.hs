splitEvery :: Int -> [a] -> [[a]]
splitEvery _ [] = []
splitEvery n xs = as : splitEvery n bs 
  where (as,bs) = splitAt n xs


split1::[a]->([a], [a])
split1 [] = ([], [])
split1 [a] = ([a], [])
split1 xs = (take (length xs `div` 2) xs, drop (length xs `div` 2) xs)

split2::[a]->([a], [a])
split2 [] = ([], [])
split2 [a] = ([a], [])
split2 xs = (firstHalf xs, drop (length xs `div` 2) xs) 
	where firstHalf = take (length xs `div` 2)