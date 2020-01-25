total xs = sum [x^2 | x <- xs, x `mod` 3 == 0 && x `mod` 5 /= 0]



-- zip
length' xs = fst (last (zip [1..] xs))



-- foldr
length'' xs = foldr (\_ x -> x+1) 0 xs



-- map
length''' xs = sum (map (\x -> 1) xs)
