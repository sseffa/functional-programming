convert :: (Double, [Char]) -> (Double, [Char])
convert (n, xs)
 | (xs == "m")  = ((n*1.09361), "yd")
 | (xs == "L")  = ((n*0.264172), "gal")
 | (xs == "kg") = ((n*2.20462), "lb")
 | otherwise = error "ERROR"