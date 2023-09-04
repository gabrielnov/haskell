-- Escreva em Haskell o programa ult, que devolve o último elemento de uma lista não vazia.
-- Exemplo de entrada do "ult".
-- ult [ 1 , 2 , 3 , 4 , 5 ]
-- >5

ult :: [x] -> x
ult = last