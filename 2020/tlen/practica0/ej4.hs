limpiar :: String -> String -> String

limpiar [] s2 = s2
limpiar (s:xs) s2 = limpiar xs (filter (\c -> c /= s) s2)


diffPromedio :: [Float] -> [Float]
mean :: [Float] -> Float

mean = uncurry (/) . foldr (\e (s,c) -> (s+e, c+1)) (0.0, 0.0)

diffPromedio xs = map (\s -> s - mean xs) xs

todosIguales :: [Float] -> Bool

todosIgualesAux [] a = True
todosIgualesAux (x:xs) a = (x == a) && (todosIgualesAux xs a) 

todosIguales [] = True
todosIguales (x:xs) = todosIgualesAux xs x
