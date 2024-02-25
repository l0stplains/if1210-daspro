module DeretSegitiga where
  -- Deret Segitiga

  -- DEFINISI DAN SPESIFIKASI
  deretSegitiga :: Int -> Int
  {- deretSegitiga merupakan fungsi untuk mencari nilai bilangan ke-n pada deret segitiga. 
  Deret segitiga adalah:1, 3, 6, 10, 15, ... -}

  -- Realisasi
  deretSegitiga n 
    | n == 1 = 1
    | otherwise = n + deretSegitiga(n-1)