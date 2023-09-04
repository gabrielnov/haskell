-- Escreva o seg, que recebe uma lista com pelo menos 2 elementos e devolve o segundo elemento da lista.
-- Exemplo de entrada do "seg".
-- seg "abcdefgh "
-- >'b'

seg :: [x] -> x
seg x = segundo x 1

segundo :: (Eq i, Num i) => [x] -> i -> x
segundo (x:xs) i | i == 2 = x 
    | otherwise = segundo xs (i+1)