{-
    RECURSION
-}

-- if then else
factorial :: Int -> Int
factorial n = 
    if (n == 0)
        then 1 
    else n * factorial(n-1)

-- guards
factorial2 :: Int -> Int
factorial2 n
    | (n == 0) = 1
    | (otherwise) = n * factorial2 (n-1)

-- pattern matching
factorial3 :: Int -> Int
factorial3 1 = 1
factorial3 n = n * factorial3 (n-1)

-- accumulators
factorial4 :: Int -> Int
factorial4 n = (aux n 1)
    where
        aux n accumulator
            | (n == 1) = accumulator
            | otherwise = aux (n-1) (n*accumulator)