curry :: ((a,b) -> c) -> a -> b -> c

curry f = \x y -> f(x,y)

uncurry :: (a -> b -> c) -> ((a,b) -> c)

uncurry f = \(x,y) ->  f x y

-- NO se podria crear la funcion curryN con una cantidad arbitraria de parametros porque necesito saber la cantidad de parametros en 
-- la definicion de la funcion
