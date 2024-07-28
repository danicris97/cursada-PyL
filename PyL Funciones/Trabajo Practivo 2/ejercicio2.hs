ptoMedio :: (Float, Float) -> (Float, Float) -> (Float,Float)
ptoMedio (x1,y1) (x2,y2) = ((x1 + x2)/2, (y1 + y2)/2)

norma :: (Float, Float) -> Float
norma (x,y) = sqrt(x^2 + y^2)

segundosToTiempo :: Integer -> (Integer, Integer, Integer)
segundosToTiempo s = (div s 3600, div (mod s 3600) 60, mod (mod s 3600) 60)