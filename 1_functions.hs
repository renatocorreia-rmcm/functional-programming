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
    BASIC TYPES
-}

x :: Int
x = -2

y :: Float
y = 3.14

z :: Bool
z = inside 1 (-2) 3