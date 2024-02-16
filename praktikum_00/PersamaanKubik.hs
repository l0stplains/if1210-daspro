module PersamaanKubik where

  -- DEFINISI DAN SPESIFIKASI
persamaanKubik :: Int -> Int -> Int -> Int -> Int -> Bool

{- persamaanKubik(a,b,c,d,x) menghasilkan true jika subsitusi x pada persamaan tersebut menghasilkan nilai 0 (x merupakan himpunan penyelesaian persamaan kubik) -}

-- REALISASI
persamaanKubik a b c d x = a*(x^3) + b*(x^2) + c*x + d == 0 