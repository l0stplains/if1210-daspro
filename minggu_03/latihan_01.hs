-- Deret Segitiga                   deretSegitiga n

-- DEFINISI DAN SPESIFIKASI
deretSegitiga :: Int -> Int

{- deretSegitiga n merupakan fungsi untuk mencari nilai bilangan ke-n 
pada deret segitiga. Deret segitiga: 1, 3, 6, 10, 15 -}

-- REALISASI
deretSegitiga n
  | n == 1 = 1
  | otherwise = n + deretSegitiga (n - 1)

-- APLIKASI
-- deretSegitiga 5

printN :: Int -> IO ()

printN n 
  | n == 1 = print(deretSegitiga 1)
  | otherwise =
    do 
      print(deretSegitiga n)
      printN (n-1)

main = printN 10