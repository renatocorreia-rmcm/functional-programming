primes :: [Int]
primes = [2, 3, 5, 7, 11]

my_reverse :: [Int] -> [Int]
-- my_reverse xs = foldr (\x xs -> xs++[x]) [] xs
my_reverse xs = foldl (\xs x -> (x:xs)) [] xs


prefixes :: [Int] -> [[Int]]
-- prefixes xs = tail $ foldl (\acc x -> acc++[(last acc)++[x]]) [[]] xs
prefixes (x:xs) = tail $ foldl (\acc x -> acc++[(last acc)++[x]]) [[x], [x]] xs


