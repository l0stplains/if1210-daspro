-- Sum Integer                    sumInteger m n cond

-- DEFINISI DAN SPESIFIKASI
sumInteger :: Int -> Int -> (Int->Bool) -> Int
{- sumInteger m n cond menghitung jumlah bilangan dari m sampai n 
dengan syarat angka yang ditambahkan memenuhi kondisi cond -}

-- REALISASI
sumInteger m n cond
  | m > n = 0
  | otherwise =
    if (cond m) then m + sumInteger (m+1) n cond
    else sumInteger (m+1) n cond

-- APLIKASI
-- sumInteger 1 100 (\x-> mod x 100 == 0)
-- sumInteger 1 00 (\x-> mod x 5 == 0)
-- sumInteger 25 25 (\x-> x < 10)

main = 
  do
    print(sumInteger 1 100 (\x-> mod x 100 == 0))
    print(sumInteger 1 100 (\x-> mod x 5 == 0))
    print(sumInteger 25 25 (\x-> x < 10))