{-
    FUNCTIONS

    -- name :: arg1_type -> ... -> argn_type -> return_type
    -- name arg1 ... argn = <expr>
-}

inside :: Int -> Int -> Int -> Bool
inside a x b =
    a <= x && x<= b

-- let in
inside2 :: Int -> Int -> Int -> Bool
inside2 a x b =
    let in_lower_bound = a <= x
        in_upper_bound = x <= b
    in in_lower_bound && in_upper_bound

-- where
inside3 :: Int -> Int -> Int -> Bool
inside3 a x b =
    in_lower_bound && in_upper_bound
    where
        in_lower_bound = a <= x
        in_upper_bound = x <= b

-- if then else
inside4 :: Int -> Int -> Int -> Bool
inside4 a x b =
    if ilb then iub else False
    where
        ilb = a <= x
        iub = x <= b

-- infix (try calling as "a `sq_sum` b")
sq_sum :: Int -> Int -> Int
sq_sum a b = a*a + b*b



{-
    HIGHER ORDER FUNCTIONS
-}

apply_twice :: (a->a) -> a -> a
apply_twice f a = (f (f a))

twoxp1 :: Int -> Int
twoxp1 x = (axpy 2 x 1)
    where axpy a x y = (a*x+y)

twoxp1_twice :: Int -> Int
twoxp1_twice x = (apply_twice twoxp1 x)


-- MAP

primes :: [Int]
primes = 2:3:5:7:11:13:[]

twoxp1_primes :: [Int]
twoxp1_primes = (map twoxp1 primes)


-- FILTER

bound_list :: Int -> Int -> [Int] -> [Int]
bound_list min max list = (filter (\x -> min<=x && x<=max) list)




{-
    ANONYMOUS FUNCTION
-}

axpy_primes :: Int -> Int ->  [Int]
axpy_primes a y = (map (\x -> a*x+y) primes)


{-
    CURRYING
-}

-- all functions had its signature written as taking a value and returning another function
-- f -> a -> b -> c
-- f ->(a->(b->c))

add :: Int -> Int -> Int
-- add x y = x + y
-- add x = (\y -> x+y)
add = (\x -> (\y -> x+y))

-- PARTIAL FUNCTION APPLICATION

increment = add 1 
squareList = map (\x -> x*x) 




{-
    COMPOSITION
-}

square :: Int -> Int
square = (\x -> x*x)

triple :: Int -> Int
triple = (\x -> 3*x)

squared_triple :: Int -> Int
squared_triple = (square.triple)
-- squared triple x = squared $ triple x  -- equivalent to  squared (triple x)