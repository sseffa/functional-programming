quick []     = []
quick [x]    = [x]
quick (x:xs) = quick [ u | u <- xs, u < x ]
               ++ [x] ++
               quick [ u | u <- xs, u >= x ]