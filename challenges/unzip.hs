main = interact $ show . unzip' . (read :: String -> [(Int,Int)])

unzip:: [(a,b)] -> ([a],[b])
unzip [] = ([],[])
unzip ((a, b): xs) = (a:as, b:bs)
 where
   (as, bs) = unzip xs 

-- unzip [(1,2), (3,4), (5,6)] ==> ([1,3,5],[2,4,6])

unzip' :: [(Int, Int)] -> ([Int],[Int])
unzip' [] = ([],[])
unzip' = foldr (\(a, b) (as, bs) -> (a:as, b:bs)) ([], [])