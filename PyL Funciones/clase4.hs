--Metodo de biseccion 2 que devuelve una tupla
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

aplica :: (a -> b) -> [a] -> [b]
--Funcion de a hacia b, donde [a] dominio y [b] codominio es el famoso MAP
aplica _ [] = []
aplica f (x:xs) = f x : aplica f xs

filtra :: (a -> Bool) -> [a] -> [a] --Filtra equivale al filter
filtra _ [] = []
filtra f (x:xs)
 | f x = x : filtra f xs
 | otherwise = filtra f xs