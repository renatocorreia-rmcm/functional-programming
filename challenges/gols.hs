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

gols :: Time -> [Jogo] -> Int
gols time js = ((sum [ b | (a,b,c,d) <- js, a==time ]) + (sum [ c | (a,b,c,d) <- js, d==time  ]))

saldo :: Time -> [Jogo] -> Int
saldo time js = ((sum [ b-c | (a,b,c,d) <- js, a==time ]) + (sum [ c-b | (a,b,c,d) <- js, d==time  ]))
