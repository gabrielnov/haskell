-- Escreva o del_rep, que recebe uma lista e deleta repetidos desta lista.
-- Exemplo de entrada do "del_rep".
-- del_rep [ 3 , 1 , 2 , 1 , 2 , 3 ]
-- >[3 ,1 ,2]
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use camelCase" #-}

del_rep :: (Eq x) => [x] -> [x]
del_rep x = delete x 1

delete :: (Eq x) => [x] -> Int -> [x]
delete [] _ = []
delete xs i | i == length xs = xs
delete (x:xs) i = x : delete ( deleteChar xs x ) (i+1)

deleteChar :: (Eq x) => [x] -> x -> [x]
deleteChar [] _ = []
deleteChar xs char = [ x | x <- xs, x /= char ]
