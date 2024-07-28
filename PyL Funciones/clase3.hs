import Data.Char

esVocal :: Char -> Bool
esVocal c = (elem c "aeiouAEIOU")

esConsonante :: Char -> Bool
esConsonante c = not (esVocal c)

esVocalDos :: Char -> Bool
esVocalDos c
 | (b == 'a') = True
 | (b == 'e') = True
 | (b == 'i') = True
 | (b == 'o') = True
 | (b == 'u') = True
 | otherwise = False
    where b = toLower c

---contar vocales
contarVocales :: String -> Int
contarVocales [] = 0
contarVocales (x:xs)
 | esVocal x = 1 + contarVocales xs
 | otherwise = contarVocales xs

contarCons :: String -> Int
contarCons [] = 0
contarCons (x:xs)
 | esConsonante x = 1 + contarCons xs
 | otherwise = contarCons xs

{-codigo MURCIELAGO
         0123456789 , es decir (m,0) y asi 
codigo = "MURCIELAGO"
codM = toLower codigo-}
esMurcielago :: Char -> Char
esMurcielago x 
 | (x == 'm') = '0'
 | (x == 'u') = '1'
 | (x == 'r') = '2'
 | (x == 'c') = '3'
 | (x == 'i') = '4'
 | (x == 'e') = '5'
 | (x == 'l') = '6'
 | (x == 'a') = '7'
 | (x == 'g') = '8'
 | (x == 'o') = '9' 
 | otherwise = x
    where b = toLower x

codificar :: String -> String
codificar [] = [] 
codificar (x:xs) = esMurcielago x : codificar xs