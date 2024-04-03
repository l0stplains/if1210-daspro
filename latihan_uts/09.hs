-- SOAL
{-
List dan Operasinya
Diketahui definisi primitif tipe list of float berikut ini. Semua primitif list dapat langsung digunakan (tidak perlu dibuat realisasinya).

Tuliskan realisasi dari fungsi berikut (definisi dan spesifikasi fungsi tidak perlu ditulis ulang). Tidak diperkenankan membuat dan menggunakan
fungsi antara baru (boleh menggunakan yang sudah tersedia pada soal ini).

Soal A

Buatlah definisi, spesifikasi, dan realisasi sebuah fungsi offsetList yang menerima masukan dua buah fungsi, misalnya f dan g, serta dua buah
 bilangan riil (float), a dan b. Fungsi offsetList akan menghasilkan sebuah list of float yang merupakan penerapan fungsi f terhadap bilangan
 float antara a dan b, dimulai dari a dengan increment menggunakan fungsi g.

 Soal B

Berikan pula aplikasi fungsi offsetList untuk ketiga kasus di bawah ini dalam bentuk ekspresi lambda dan tuliskan pula hasil aplikasinya.
-}

  -- DEFINISI DAN SPESIFIKASI LIST
  {- type List of Float: [ ] atau [e o List] atau [List o e]
    Definisi type List of Float
    Basis: List of Float kosong adalah list of Float
    Rekurens:
    List tidak kosong dibuat dengan menambahkan sebuah elemen bertype Float di awal
    sebuah list atau
    dibuat dengan menambahkan sebuah elemen bertype Float di akhir sebuah list -}

-- DEFINISI DAN SPESIFIKASI KONSTRUKTOR
konso :: Float -> [Float] -> [Float]
{- konso e li menghasilkan sebuah list of float dari e (sebuah float) dan li
  (list of float), dengan e sebagai elemen pertama: e o li -> li' -}
-- REALISASI
konso e li = [e] ++ li

konsDot :: [Float] -> Float -> [Float]
{- konsDot li e menghasilkan sebuah list of float dari li (list of float) dan
  e (sebuah float), dengan e sebagai elemen terakhir: li o e -> li' -}
-- REALISASI
konsDot li e = li ++ [e]

-- DEFINISI DAN SPESIFIKASI SELEKTOR
-- head :: [Float] -> Float
-- head l menghasilkan elemen pertama list l, l tidak kosong

-- tail :: [Float] -> [Float]
-- tail l menghasilkan list tanpa elemen pertama list l, l tidak kosong

-- last :: [Float] -> Float
-- last l menghasilkan elemen terakhir list l, l tidak kosong

-- init :: [Float] -> [Float]
-- init l menghasilkan list tanpa elemen terakhir list l, l tidak kosong

-- DEFINISI DAN SPESIFIKASI PREDIKAT
isEmpty :: [Float] -> Bool
-- isEmpty l  true jika list of float kosong
-- REALISASI
isEmpty l = null l

isOneElmt :: [Float] -> Bool
-- isOneElmt l true jika list of float l hanya mempunyai satu elemen
-- REALISASI
isOneElmt l = (length l) == 1

-- DEFINISI DAN SPESIFIKASI
offsetList :: (Float -> Float) -> (Float -> Float) -> Float -> Float -> [Float]
{- offsetList f g a b menerima masukan dua buah fungsi f dan g, serta dua buah
bilangan rill a dan b. Fungsi ini akan menghasilkan sebuah list of float yang
merupakan penerapan fungsi f terhadap bilangan float antara a dan b, dimulai dari a dengan increment menggunakan fungsi g-}

-- REALISASI
offsetList f g a b
  | a > b = []
  | otherwise =
    konso (f a) (offsetList f g (g a) b)

-- APLIKASI
idx :: Float -> Float
-- id x mengirimkan nilai x
idx x = x

p1 :: Float -> Float
-- p1 x mengirimkan nilai x + 1
p1 x = x + 1

p2 :: Float -> Float
-- p2 mengirimkan nilai x + 2
p2 x = x + 2

-- offsetList id p1 1 5
-- offsetList p1 p2 5 10
-- offsetList (\x -> x) (\x -> x + 2) 1.2 7.1
-- offsetList (\x -> x + 3.2) (\x -> x + 0.5) (-1) 1

-- [1.0,2.0,3.0,4.0,5.0]
-- [6.0,8.0,10.0]
-- [1.2,3.2,5.2]
-- [2.2,2.7,3.2,3.7,4.2]

main = 
  do
    print(offsetList idx p1 1 5)
    print(offsetList p1 p2 5 10)
    print(offsetList (\x -> x) (\x -> x + 2) 1.2 7.1)
    print(offsetList (\x -> x + 3.2) (\x -> x + 0.5) (-1) 1)
