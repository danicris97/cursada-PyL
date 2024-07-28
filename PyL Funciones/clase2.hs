suma :: Num a => a -> a -> a
suma x y = x + y

--añade un elemento a la cabeza de la lista--
añadirElementoLista elem lista = elem:lista

--tamaño--
tamañoLista lista = length lista

estaVacia :: [a] -> Bool
estaVacia [] = True
estaVacia lista = False

--Unir dos listas
unirListas :: [a] -> [a] -> [a]
unirListas lista1 lista2 = lista1 ++ lista2

--aplanar listas... funciones constantes
listaNoAplanada :: [[Integer]]
listaNoAplanada = [[2,3],[4,5,6]]

listaAplanada :: [Integer]
listaAplanada = concat listaNoAplanada

tresPrimerasLetras :: [Char]
tresPrimerasLetras = take 3 "ejemplo"

---listas combinadas
nombres :: [[Char]]
nombres = ["cristian","daniel","velazquez"]
numerosTelefonos :: [Integer]
numerosTelefonos = [123,456,789]
listasCombinadas :: [([Char], Integer)]
listasCombinadas = zip nombres numerosTelefonos

comprension :: [(Integer,Integer)] 
comprension = [(x,y) | x <- [1,2,3], y <- [4,5]]

--concatenar listas
concatenar :: [[a]] -> [a]
concatenar xss = [x | xs <- xss, x <- xs]