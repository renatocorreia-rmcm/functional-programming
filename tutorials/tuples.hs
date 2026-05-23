{-
    TUPLES
-}

pit1 :: (Int, Int, Int)
pit1 = (3,4,5)
pit2 :: (Int, Int, Int)
pit2 = (5, 12, 13)
pit3 :: (Int, Int, Int)
pit3 = (6, 8, 10)

-- functions for binary tuples: fst, snd
--

-- split
getz :: (Int, Int, Int) -> Int
getz t = let (x, y, z) = t in z 


-- list comprehension and split
add_tuples :: [(Int, Int, Int)] -> [Int]
add_tuples ts = [x+y+z | (x, y, z) <- ts]