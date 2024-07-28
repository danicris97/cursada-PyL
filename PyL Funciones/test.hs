doble :: Double -> Double
doble x = x + x

suma :: Float -> Float -> Float
suma x y = x + y

norma :: Float -> Float ->Float
norma x y = sqrt(x^2 + y^2)

funcConstante :: Int -> Int
funcConstante x = 1

esPositivo :: Int -> Bool
esPositivo x = x>0

esDigito ::  Int -> Bool
esDigito x = (x>=0 && x<=9)

celciusToFahr :: Double -> Double
celciusToFahr x = (x * (9/5)) + 32

esMultiploTres :: Int -> Bool
esMultiploTres x = ((mod x 3) == 0)