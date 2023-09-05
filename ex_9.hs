-- Exercício 09
-- Escreva o delk, que recebe uma lista e um natural k e deleta um a cada k elementos da lista.
-- Exemplo de entrada do "delk".
-- delk 3 "anonimamentes"
-- >"anniamnts"

delk :: (Eq x, Ord x) => Int -> [x] -> [x]
delk _ [] = []
delk k a = delete k a []

delete :: (Eq x) => Int -> [x] -> [x] -> [x]
delete k a _ | length a < k = a
delete k a _ | length a == k = init a
delete k a b = b ++ delete k (take k a) b ++ delete k (drop k a) b

