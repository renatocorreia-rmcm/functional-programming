is_in :: Int -> [Int] -> Bool
is_in a [] = False
is_in a (x:xs) = if (a==x) then True else (is_in a xs)


remove_duplicates :: [Int] -> [Int]
remove_duplicates [] = []
remove_duplicates (x:xs)
    | (x `is_in` xs) = (remove_duplicates xs)
    | otherwise = (x:(remove_duplicates xs))

is_ascending :: [Int] -> Bool
is_ascending [] = True
is_ascending [x] = True
is_ascending (x:xs) = (x <= (head xs)) && (is_ascending xs)
