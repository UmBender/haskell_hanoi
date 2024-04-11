hanoi :: (Eq a, Show a, Num a) => a -> a -> a -> [Char]
hanoi x y z =
  if x == 1
    then "|" ++ show y ++ " " ++ show z ++ "|" :: String
    else hanoi (x - 1) y (6 - y - z) ++ "|" ++ show y ++ " " ++ show z ++ "|" ++ hanoi (x - 1) (6 - y - z) z

main :: IO ()
main = putStrLn (hanoi 25 1 3)
