-- Escreva o penult, que recebe uma lista com pelo menos 2 elementos e devolve como resposta
-- o penúltimo elemento da lista.
-- Exemplo de entrada do "penult".
-- penult "abcdefgh "
-- >'g'

penult :: [x] -> x
penult x = last (init x) 
