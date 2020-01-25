isPal [] = True
isPal [x] = True
isPal xs = ((head xs) == (last xs)) && isPal(init(tail xs))