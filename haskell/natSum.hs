natSum n = n + natSum m


natSum 0 = 0
natSum n = n + natSum (n - 1)


natSum :: Num a => a -> a
natSum 0  = 0                    -- base case
natSum n  = n + natSum (n - 1)   -- recursive/stepping case



natSum :: Num a => a -> a
natSum n = if n == 0 
              then 0 
              else n + natSum (n - 1)



natSum :: (Num a, Ord a) => a -> a
natSum 0              = 0
natSum n  | n > 0     = n + natSum (n - 1) 
          | otherwise = error "natSum: Input value too small!"