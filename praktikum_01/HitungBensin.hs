module HitungBensin where
  hitungBensin :: Int -> Int -> Int
  biayaBensin :: Int -> Int

  hitungBensin a b 
    | a == b = biayaBensin a
    | otherwise = biayaBensin a + hitungBensin (a+1) b

  biayaBensin n 
    | n == 1 = 0
    | otherwise = if mod n 2 == 0 then 1 + biayaBensin (div n 2) else 1 + biayaBensin (3*n + 1)


