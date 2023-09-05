-- Escreva o totk, que recebe uma lista e um natural k e totaliza a lista de k em k elementos.
-- Exemplo de entrada do "totk".
-- totk 5 [ 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ]
-- >[5 ,5 ,2]

totk :: (Num x, Eq x, Ord x) => Int -> [x] -> [x]
totk _ [] = []
totk k a = soma k a []

soma :: (Num x, Eq x) => Int -> [x] -> [x] -> [x]
soma k a _ | length a <= k = [sum a]
soma k a b = b ++ soma k (take k a) b ++ soma k (drop k a) b

