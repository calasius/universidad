valorAbsoluto :: Float -> Float

valorAbsoluto a = if a < 0 then -a else a

factorial :: Int -> Int

factorial n | n == 1 = 1
factorial n | otherwise = n * factorial(n-1)


prime_factors :: Int -> [Int]

prime_factors 1 = []
prime_factors n
  | factors == []  = [n]
  | otherwise = factors ++ prime_factors (n `div` (head factors))
  where factors = take 1 $ filter (\x -> (n `mod` x) == 0) [2 .. n-1]
