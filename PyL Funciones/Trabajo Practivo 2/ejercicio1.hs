esNumeroNegativo :: Int -> Bool
esNumeroNegativo x = x<0

fueraDeRango :: Int -> Int -> Int -> Bool
fueraDeRango a b c = a>c && c>b

esMultiploDe :: Int -> Int -> Bool
esMultiploDe a b = b /= 0 && mod a b == 0