-- Escreva o trok2, que recebe uma lista e troca de lugar o primeiro com o segundo elemento, o
-- terceiro com o quarto e assim por diante.
-- Exemplo de entrada do "trok2".
-- trok2 [ 1 , 2 , 3 , 4 , 5 , 6 , 7 ]
-- >[ 2 , 1 , 4 , 3 , 6 , 5 , 7]

trok2 :: [x] -> [x]
trok2 [] = []
trok2 xs = trocar xs

trocar :: [x] -> [x]
trocar xs | length xs < 2 = xs
trocar xs | length xs == 2 = reverse xs
trocar xs = trocar (take 2 xs) ++ trocar (drop 2 xs)