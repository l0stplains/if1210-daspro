-- SOAL
{- 
Analisis Rekurens
Fungsi pangkat menerima masukan berupa dua buah integer, a dan b, dan mengembalikan
 hasil berupa a^b (a pangkat b). Masukan diasumsikan selalu valid, yaitu a > 0 dan b ≥ 0.
Buatlah definisi, spesifikasi, realisasi dengan menggunakan  ekspresi rekursif  dan 
contoh aplikasi berikut hasilnya (minimum 2 buah) dari fungsi pangkat.
.
 -}

-- DEFINISI DAN SPESIFIKASI
pangkat :: Int -> Int -> Int
{- pangkat a b meneruma masukan berupa dua buah integer, a dan b,
dan mengembalikan hasil berupa a pangkat b. diasumsikan masukan selalu valid a > 0 dan b >= 0 -}

-- REALISASI

pangkat a b
  | b == 0 = 1
  | otherwise = a * pangkat a (b-1)

-- APLIKASI
-- pangkat 1 100
-- pangkat 2 0
-- pangkat 2 10
-- pangkat 3 3

main = 
  do
    print(pangkat 1 100)
    print(pangkat 2 0)
    print(pangkat 2 10)
    print(pangkat 3 3)
