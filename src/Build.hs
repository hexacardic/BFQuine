encodeChar :: Char -> Int
encodeChar '+' = 1
encodeChar '-' = 2
encodeChar '.' = 3
encodeChar '<' = 4
encodeChar '>' = 5
encodeChar '[' = 6
encodeChar ']' = 7
encodeChar c = error $ "Unsupported character: " <> show c

buildChar :: Char -> String
buildChar c = '>' : replicate (encodeChar c) '+'

main :: IO ()
main = interact $ (>>= buildChar) . reverse