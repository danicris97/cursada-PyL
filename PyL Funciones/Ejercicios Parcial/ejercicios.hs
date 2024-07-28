import Data.Char

--ejercicio 1

segundosToTiempo :: Integer -> (Integer, Integer, Integer)
segundosToTiempo totalSegundos = (horas, minutos, segundos)
  where
    horas = totalSegundos `div` 3600
    minutos = (totalSegundos `mod` 3600) `div` 60
    segundos = totalSegundos `mod` 60

promedios :: [[Integer]] -> [Float]
promedios = map calcularPromedio

--ejercicio 2
calcularPromedio :: [Integer] -> Float
calcularPromedio lista = fromIntegral (sum lista) / fromIntegral (length lista)

promediosSinAplazos :: [[Integer]] -> [Float]
promediosSinAplazos = map calcularPromedioSA

calcularPromedioSA :: [Integer] -> Float
calcularPromedioSA lista = calcularPromedio (filter (>3) lista)

mejoresNotas :: [[Integer]] -> [Integer]
mejoresNotas = map determinaMayor

determinaMayor :: [Integer] -> Integer
determinaMayor [] = error "Lista vacia"
determinaMayor [x] = x
determinaMayor (x:xs)
 | x>mayor = x
 | otherwise = mayor
 where
  mayor = determinaMayor xs

--ejercicio 3

biseccion2 :: (Double -> Double) -> (Double, Double) -> Double -> (Double, Int)
biseccion2 f2 (a, b) epsilon = biseccion2 f2 (a, b) epsilon 0
 where
    biseccion2 f (a, b) epsilon iter
     | fa * fb > 0 = error "No cumple condicion"
     | abs fc <= epsilon =  (c, iter)
     | fa * fc < 0 = biseccion2 f2 (a, c) epsilon (iter + 1)
     | otherwise = biseccion2 f2 (c, b) epsilon (iter + 1)
     where
        fa = f2 a
        fb = f2 b
        fc = f2 c
        c = (a + b) / 2

--ejercicio 4

-- Verifica si un elemento pertenece a la lista
pertenece :: Eq a => a -> [a] -> Bool --Eq para que todos los elementos de la lista sean iguales
pertenece _ [] = False
pertenece x (y:ys) = x == y || pertenece x ys

-- Devuelve la intersección de dos listas
interseccion :: Eq a => [a] -> [a] -> [a]
interseccion [] _ = []
interseccion (x:xs) ys
  | pertenece x ys = x : interseccion xs ys
  | otherwise = interseccion xs ys

pert :: Eq a => a -> [a] -> Bool
pert x xs = elem x xs

inter :: Eq a => [a] -> [a] -> [a]
inter [] _ = []
inter xs ys = filter (\x -> pert x ys) xs

-- Devuelve la unión de dos listas
union :: Eq a => [a] -> [a] -> [a]
union [] ys = ys
union (x:xs) ys
  | pertenece x ys = union xs ys
  | otherwise = x : union xs ys

-- Devuelve la diferencia entre dos listas
diferencia :: Eq a => [a] -> [a] -> [a]
diferencia [] _ = []
diferencia (x:xs) ys
  | pertenece x ys = diferencia xs ys
  | otherwise = x : diferencia xs ys

--ejercicio 5

-- Función para codificar una cadena
codificarCadena :: String -> String
codificarCadena [] = []
codificarCadena (c:cs)
  | isAlpha c = codificarCaracter c : codificarCadena cs
  | otherwise = c : codificarCadena cs

-- Función para codificar un carácter
codificarCaracter :: Char -> Char
codificarCaracter c
  | isLower c = chr $ (ord c - ord 'a' + 3) `mod` 26 + ord 'a'
  | isUpper c = chr $ (ord c - ord 'A' + 3) `mod` 26 + ord 'A'
  | otherwise = c

--ejercicio 6

esMurcielago :: Char -> Char
esMurcielago x 
 | x == 'm' = '0'
 | x == 'u' = '1'
 | x == 'r' = '2'
 | x == 'c' = '3'
 | x == 'i' = '4'
 | x == 'e' = '5'
 | x == 'l' = '6'
 | x == 'a' = '7'
 | x == 'g' = '8'
 | x == 'o' = '9' 
 | otherwise = x
    where b = toLower x

codificar :: String -> String
codificar = map esMurcielago