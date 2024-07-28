import Control.Concurrent.STM (check)

eliminaCaracter :: String -> Char -> String
eliminaCaracter [] _ = []
eliminaCaracter (s:xs) c
 | s==c = eliminaCaracter xs c
 | otherwise = s:eliminaCaracter xs c

limpiar :: String -> String -> String
limpiar [] _ = []
limpiar str [] = str
limpiar str (c:xc)
 | c `elem` str = limpiar (eliminaCaracter str c) (eliminaCaracter xc c)
 | otherwise = head str:limpiar (tail str) xc

--Otro limpiar 
eliminarCaracteres :: String -> String -> String
eliminarCaracteres a b = filter (`notElem` b) a


calcularPromedio :: [Float] -> Float
calcularPromedio [] = 0
calcularPromedio lis = suma / fromIntegral (length lis)
  where suma = sum lis

difAux :: [Float] -> Float -> [Float]
difAux [] _ = []
difAux (x:lis) prom = (x - prom):difAux lis prom

dif :: [Float] -> [Float]
dif lis = difAux lis (calcularPromedio lis)


todosIguales :: [Int] -> Bool
todosIguales [] = True
todosIguales (x:xs) = all (==x) xs


repLista :: [Int] -> Int -> [Int]
repLista lista n = concatMap (replicate n) lista


lista2Lista :: [[Int]] -> [Int]
lista2Lista = concat


contadorAbierto :: [Char] -> Int
contadorAbierto [] = 0
contadorAbierto (x:xs)
 | x == '(' = 1 + contadorAbierto xs
 | otherwise = contadorAbierto xs

contadorCerrado :: Num p => [Char] -> p
contadorCerrado [] = 0
contadorCerrado (x:xs)
 | x == ')' = 1 + contadorCerrado xs
 | otherwise = contadorCerrado xs

checkParentesis :: String -> Bool
checkParentesis cadena = (contadorAbierto cadena == contadorCerrado cadena)


finales :: Int -> [Integer] -> [Integer]
finales n lista
 | n <= 0 = []
 | length lista <= n = lista --Si la longitud de la lista es menor o igual a n devolvemos la lista
 | otherwise = drop (length lista - n) lista -- con drop eliminamos los primeros m elementos, donde m es el calculo longitud - n

iniciales :: Int -> [Integer] -> [Integer]
iniciales n lista
 | n <= 0 = [] --Caso base
 | length lista < n = lista
 | otherwise = take n lista -- Con el metodo take recupero los n elementos iniciales de la lista


extremos :: Int -> [Integer] -> [Integer]
extremos n lista
 | n <= 0 = [] --Caso base 1
 | length lista < n = lista
 | otherwise = iniciales n lista ++ finales n lista --Con el operador ++ unimos 2 listas
