encodeChar :: Char -> Int
encodeChar '+' = 1
encodeChar '-' = 2
encodeChar '.' = 3
encodeChar '<' = 4
encodeChar '>' = 5
encodeChar '[' = 6
encodeChar ']' = 7
encodeChar char = error $ "Unsupported character: " <> show char

buildChar :: Char -> String
buildChar char = '<' : replicate (encodeChar char) '-'

buildSequence :: String -> String
buildSequence seq = do
	char <- reverse seq
	buildChar char

main :: IO ()
main = interact buildSequence