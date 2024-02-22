-- APAKAH GANJIL?                   isGanjil n

-- DEFINISI DAN SPESIFIKASI
isGanjil :: Int -> Bool
{- isGanjil n merupakan predikat untuk memeriksa apakah sebuah bilangan integer (>=0)
merupakan bilangan ganjil -}

-- REALISASI
isGanjil n 
  | n == 0 = False
  | n == 1 = True
  | otherwise = isGanjil (n - 2)

-- APLIKASI
-- isGanjil 5
-- isGanjil 100
-- isGanjil 0

main = 
  do 
    print(isGanjil 5)
    print(isGanjil 100)
    print(isGanjil 0)
    print(isGanjil 1)