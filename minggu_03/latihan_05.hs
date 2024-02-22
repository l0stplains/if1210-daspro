-- Sum Range                    sumRange a b

-- DEFINISI DAN SPESIFIKASI
sumRange :: Int -> Int -> Int
{- sumRange a b merupakan fungsi yang menerima masukan 2 bilangan integer
misalnya a dan b yang menyatakan rentang bilangan dengan syarat a<=b dan b positif
; dan menghasilkan penjumlahan semua bilangan dari a s.d. b -}

-- REALISASI
sumRange a b 
  | a == b = a
  | otherwise = a + sumRange (a + 1) b

-- APLIKASI
-- sumRange 2 2
-- sumRange 2 4

main = 
  do 
    print(sumRange 2 2)
    print(sumRange 2 4)
    print(sumRange 1 10)