length' [x] = 1
length' (x:xs) = 1 +(length' xs)


length'' xs = map (\_ n -> 1 + n) 0 xs

map (\_ n -> 1 + n) [1..10]

-- length (map (`div` 0) [1,2,3,4,5,6,7,0])


sum (map (\x -> 1) [1..10])
map (\x -> x^3) (filter even [1..10])