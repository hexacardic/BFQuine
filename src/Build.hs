buildChar :: Char -> String
buildChar n = '>' : replicate (fromEnum n - 42) '+'

main :: IO ()
main = interact (>>= buildChar)