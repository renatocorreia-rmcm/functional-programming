data Time = Haiti | Escocia | Brasil | Marrocos | Catar | Suica | Canada | Bosnia 
    deriving (Show, Eq)

type Jogo = (Time, Int, Int, Time)

jogos1 :: [Jogo]
jogos1 = [
    (Haiti,    1, 3, Escocia), (Brasil,  2, 0, Marrocos),
    (Catar,    0, 2, Suica),   (Canada,  0, 0, Bosnia),
    (Suica,    0, 1, Bosnia),   (Canada,  0, 0, Catar),
    (Brasil,   1, 0, Haiti),    (Escocia, 0, 1, Marrocos),
    (Suica,    1, 0, Canada),   (Bosnia,  1, 1, Catar),
    (Marrocos, 0, 0, Haiti),    (Escocia, 1, 2, Brasil)]

ponto :: Int -> Int -> Int
ponto a b
    | (a > b) = 3
    | (a == b) = 1
    | (a < b) = 0

pontoJogo :: Time -> Jogo -> Int
pontoJogo time (a,b,c,d)
    | (time == a) = (ponto b c)
    | (time == d) = (ponto c b)
    | otherwise = 0

pontuar :: Time -> [Jogo] -> Int
pontuar time js = sum (map (pontoJogo time) js) 
