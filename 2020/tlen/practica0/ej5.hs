data AB a = Nil | Bin (AB a) a (AB a) deriving (Show)

vacioAB :: AB a -> Bool

vacioAB a = case a of 
  Nil -> True
  _ -> False

negacionAB :: AB Bool -> AB Bool

negacionAB Nil = Nil
negacionAB (Bin i r d) = Bin (negacionAB i) (not r) (negacionAB d)

productoAB :: AB Int -> Int

productoAB Nil = 1
productoAB (Bin i r d) = r * productoAB(i) * productoAB(d)
