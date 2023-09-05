-- Escreva em Haskell o programa tot3, que recebe uma lista e totaliza a cada 3 elementos da
-- lista.
-- Exemplo de entrada do "tot3".
-- tot3 [ 1 , 1 , 1 , 2 , 2 , 2 , 3 , 3 , 3 , 4 ]
-- >[ 3 , 6 , 9 , 4 ]

tot3 :: (Num x, Eq x) => [x] -> [x]
tot3 [] = []
tot3 x = soma x []

soma :: (Num x, Eq x) => [x] -> [x] -> [x]
soma x _ | length x <= 3 = [sum x]
soma x y = y ++ soma (take 3 x) y ++ soma (drop 3 x) y

