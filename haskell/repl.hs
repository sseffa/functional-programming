repl' :: String -> String
repl' "" = ""
repl' (x:xs) = x:x:(repl' xs)