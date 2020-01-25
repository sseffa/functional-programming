module Saat(farkEkle, cevir, toString) where
data Saat = Saat { saat::Int , dakika::Int }

cevir :: Int-> Int-> Saat
cevir s d = Saat s2 d2
  where s2 = (s + (d `div` 60)) `mod` 24
        d2 = d `mod` 60

toString:: Saat-> String
toString s = bSfrEkle(saat(s)) ++ ":" ++ bSfrEkle(dakika(s))


bSfrEkle :: Int-> String
bSfrEkle a
 | a < 10 = "0" ++ (show a)
 | otherwise = show a

farkEkle :: Int -> Int -> Saat -> Saat
farkEkle sInt dInt s = cevir (sInt + saat(s)) (dInt + dakika(s))