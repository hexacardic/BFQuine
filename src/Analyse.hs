import Data.List (group, sort)
import Control.Arrow ((>>>))

main :: IO ()
main = interact $
	sort >>>
	group >>>
	fmap (\cs -> take 1 cs <> " : " <> show (length cs)) >>>
	unlines