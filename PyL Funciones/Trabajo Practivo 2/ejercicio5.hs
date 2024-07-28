resto :: Integer -> Integer -> Integer
resto m n
  | n == 0    = error "No se puede dividir por cero."
  | m < n     = m
  | otherwise = resto (m - n) n


cociente :: Integer -> Integer -> Integer
cociente m n
  | n == 0    = error "No se puede dividir por cero."
  | m < n     = 0
  | otherwise = 1 + cociente (m - n) n


sumatoria :: Integer -> Integer -> Integer
sumatoria a b
  | a > b     = error "El intervalo es inválido: a > b"
  | a == b    = a
  | otherwise = a + sumatoria (a + 1) b


cantDigitos :: Integer -> Integer
cantDigitos n
  | n < 0     = cantDigitos (-n)  -- Manejar números negativos
  | n < 10    = 1
  | otherwise = 1 + cantDigitos (n `div` 10)


maximo :: [Integer] -> Integer
maximo [] = error "La lista está vacía"
maximo [x] = x
maximo (x:xs) = max x (maximo xs)


digitos2Entero :: [Integer] -> Integer
digitos2Entero [] = error "La lista de dígitos está vacía"
digitos2Entero lista = auxiliar 0 lista
  where
    auxiliar resultado [] = resultado
    auxiliar resultado (x:xs) = auxiliar (resultado * 10 + x) xs


pertenece :: Eq a => a -> [a] -> Bool
pertenece _ [] = False
pertenece elemento (x:xs)
  | elemento == x = True
  | otherwise = pertenece elemento xs


interseccion :: Eq a => [a] -> [a] -> [a]
interseccion lista1 lista2 = [x | x <- lista1, x `elem` lista2]


menoresA :: [Integer] -> Integer -> [Integer]
menoresA lista x = [n | n <- lista, n < x]


sinRepetidos :: [Integer] -> [Integer]
sinRepetidos lista = eliminarRepetidos lista []
  where
    eliminarRepetidos [] acumulador = acumulador
    eliminarRepetidos (x:xs) acumulador
      | x `elem` acumulador = eliminarRepetidos xs acumulador
      | otherwise = eliminarRepetidos xs (acumulador ++ [x])