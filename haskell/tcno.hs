import Data.Char
import Data.List


tcDogrula :: String -> Bool
tcDogrula x = (length x==11) 
 && (all isDigit x)
 && not(head x=='0')
 && (even.digitToInt.last) x --not(elem (last x) "13579")
 && (onuncuHane x) == digitToInt (x !! 9)
 && (sum $ map digitToInt (init x)) `mod` 10 == digitToInt (x !! 10)


onuncuHane:: String -> Int
onuncuHane x = araTop `mod` 10 
 where intNo = map (digitToInt) x
       tekTop = sum (map (intNo !!) [0,2..8])
       ciftTop = sum (map (intNo !!) [1,3..7])
       araTop = (tekTop)*7 - ciftTop