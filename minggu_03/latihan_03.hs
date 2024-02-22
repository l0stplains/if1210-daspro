-- Luas Bujur Sangkar                   luasBS n

-- DEFINISI DAN SPESIFIKASI
luasBS :: Int -> Int
{- luasBS n merupakan fungsi untuk menghitung luas bujur sangkar dengan
panjang sisi tertentu menggunakan pendekatan rekursif -}

-- REALISASI
luasBS n 
  | n == 0 = 0
  | otherwise = luasBS (n - 1) + n + (n - 1)

-- APLIKASI
-- luasBS 5
-- luasBS 1
-- luasBS 9

main = 
  do
    print(luasBS 0)
    print(luasBS 5)
    print(luasBS 9)
    print(luasBS 1)