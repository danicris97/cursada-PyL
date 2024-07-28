sumarCuadrados :: Integer -> Integer
sumarCuadrados n = sum [x^2 | x <- [1..n]]


replica :: Int -> a -> [a]
replica n x = replicate n x


pares :: [a] -> [b] -> [(a, b)]
pares listaA listaB = [(x, y) | x <- listaA, y <- listaB]