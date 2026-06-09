data Time = Haiti | Escocia | Brasil | Marrocos | Catar | Suica | Canada | Bosnia 
    deriving (Show, Eq)

type Jogo = (Time, Int, Int, Time)

jogos1 :: [Jogo]
jogos1 = [(Haiti,
2, 0, Marrocos), (Canada, 0, 0, Bosnia), (Canada, 0, 0, Catar), (Escocia, 0, 1, Marrocos), (Bosnia, 1, 1, Catar), (Escocia, 1, 2, Brasil)]
1, 3, Escocia), (Brasil, (Catar, 0, 2, Suica), 0, 1, Bosnia), (Suica, (Brasil, 1, 0, Haiti), (Suica, 1, 0, Canada), (Marrocos, 0, 0, Haiti),