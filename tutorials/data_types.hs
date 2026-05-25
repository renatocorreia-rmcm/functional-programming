{-
    BASIC TYPES
-}

x :: Int
x = -2

y :: Float
y = 3.14

z :: Bool
z =  (2+2==4)


{-
    USER DEFINED DATA TYPES
-}

data Color =
    Rgb Int Int Int | Black | White | Cyan  -- constructors

get_rgb :: Color -> (Int, Int, Int)
get_rgb (Rgb r g b) = (r, g ,b)
get_rgb Black = (0, 0, 0)
get_rgb White = (255, 255, 255)
get_rgb Cyan = (0, 255, 255)



invert_Color :: Color -> Color
invert_Color (Rgb r g b) = (Rgb (255-r) (255-g) (255-b))
invert_Color Black = White
invert_Color White = Black
invert_Color Cyan = (Rgb 255 0 0)


-- TREES + POLIMORPHISM

data Tree a =  -- polimorphism of type a
    DeadLeaf | Leaf a | Node a (Tree a) (Tree a)

{- 
    1
  2   3
 4 * * 5
-}

myTree = (Node 1 (Node 2 (Leaf 4) (DeadLeaf)) (Node 3 (DeadLeaf) (Leaf 5)))

