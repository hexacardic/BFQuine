buildChar :: Char -> String
buildChar n = replicate (fromEnum n) '+' <> ">>"

main :: IO ()
main = interact (>>= buildChar)