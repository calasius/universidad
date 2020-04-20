inverso :: Float -> Maybe Float

inverso n
  | n == 0 = Nothing
  | otherwise = Just n

aEntero :: Either Int Bool -> Int

aEntero e = case e of
  Left a -> a
  Right b -> if b then 1 else 0

