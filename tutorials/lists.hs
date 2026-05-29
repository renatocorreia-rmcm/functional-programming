import Data.List -- used only in {- FUNCTIONS -}

{-
    LISTS
-}

-- empty list               constructor [x]
-- cons / colon / prepend   contructor x:xs or x:[]

primes :: [Int]
primes = 2:3:5:7:11:[]
odds :: [Int]
odds = 1:3:5:7:9:[]
bools :: [Bool]
bools = True : True : False : []

arange :: Int -> Int -> Int -> [Int]
arange start step stop
    | (start > stop) && (step >= 0) = [] 
    | (start < stop) && (step <= 0) = [] 
    | otherwise = start : (arange (start+step) step stop)


{-
    FUNCTIONS
-}

-- head primes  -- first
-- last primes  -- last

-- init primes  -- all but last
-- tail primes  -- all but first

-- lenght primes
-- null primes  -- empty

-- or bools
-- and bools


{-
    LIST COMPREHENSION
-}

pair_primes = [x | x <- primes, ((x `mod` 2) == 0)]

squared_primes = [x*x | x <- primes]

prime_and_odd = [(x,y) | x <- primes, y <- odds]


{-
    PATTERNS
-}

my_sum :: [Int] -> Int
my_sum [] = 0
my_sum (x:xs) = x + my_sum xs


{-
    FOLDING
-}

-- foldr op acc xs = (x1 op (... op (xn op acc)))
-- foldl op acc xs = (((acc op x1) op ...) op xn)

sum_primes :: Int
sum_primes = foldr (+) 0 primes


