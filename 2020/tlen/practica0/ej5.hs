data AB a = Nil | Bin (AB a) a (AB a)

vacioAB :: AB a -> Bool

vacioAB a = case a of 
  Nil -> True
  _ -> False
