-- as Structures in other laguanges

data Person = Person {
    name :: String,  -- auto creates `name :: Person -> String`
    age :: Int  -- ''
}

p1 :: Person
p1 = Person {
    name = "George",
    age = 5
}
-- or just `p1 = Person "George" 5`


greet :: Person -> String
greet person = "Hi " ++ (name person)