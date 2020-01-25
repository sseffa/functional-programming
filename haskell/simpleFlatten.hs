squish :: [[a]] -> [a]
squish xss = [x | xs <- xss, x <- xs]