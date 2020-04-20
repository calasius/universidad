max2 :: Ord p => (p, p) -> p
max2 (x,y) | x >= y = x
           | otherwise = y

max2_currify :: Ord p => p -> p -> p
max2_currify x = (\y -> if x >= y then x else y)


normaVectorial :: Floating a => (a, a) -> a
normaVectorial (x, y) = sqrt (x^2 + y^2)

normaVectorialCurrify :: Floating a => a -> a -> a
normaVectorialCurrify x = (\y -> sqrt (x^2 + y^2))

subtract :: Integer -> Integer -> Integer
subtract = flip (-)

predecesor :: Integer -> Integer
predecesor = Main.subtract 1

evaluarEnCero :: (Integer -> t) -> t
evaluarEnCero = \f -> f 0

dosVeces :: (b -> b) -> b -> b
dosVeces = \f -> f.f

flipAll :: [a -> b -> c] -> [b -> a -> c]
flipAll = map flip

flipRaro :: b -> (a -> b -> c) -> a -> c
flipRaro = flip flip
