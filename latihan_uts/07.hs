-- SOAL
{- 
List dan Operasinya
Diketahui definisi primitif tipe list of integer berikut ini. Semua primitif list dapat langsung digunakan (tidak perlu dibuat realisasinya).

Tuliskan realisasi dari fungsi berikut (definisi dan spesifikasi fungsi tidak perlu ditulis ulang). Tidak diperkenankan membuat dan menggunakan 
fungsi antara baru (boleh menggunakan yang sudah tersedia pada soal ini).

delElement :: Int -> [Int] -> [Int]
fungsi mengembalikan list l dengan elemen x yang telah dihapus dari l.
Jika x bukan elemen l, maka fungsi mengembalikan l semula.
Prekondisi: elemen l unik (setiap elemen hanya muncul 1 kali).
-}

  -- DEFINISI DAN SPESIFIKASI LIST
  {- type List of Int: [ ] atau [e o List] atau [List o e]  
    Definisi type List of Int
    Basis: List of Int kosong adalah list of Int 
    Rekurens: 
    List tidak kosong dibuat dengan menambahkan sebuah elemen bertype Int di awal 
    sebuah list atau
    dibuat dengan menambahkan sebuah elemen bertype Int di akhir sebuah list -}

-- DEFINISI DAN SPESIFIKASI KONSTRUKTOR
konso :: Int -> [Int] -> [Int]
{- konso e li menghasilkan sebuah list of integer dari e (sebuah integer) dan li 
  (list of integer), dengan e sebagai elemen pertama: e o li -> li' -}
-- REALISASI
konso e li = [e] ++ li

konsDot :: [Int] -> Int -> [Int]
{- konsDot li e menghasilkan sebuah list of integer dari li (list of integer) dan 
  e (sebuah integer), dengan e sebagai elemen terakhir: li o e -> li' -}
-- REALISASI
konsDot li e = li ++ [e]

-- DEFINISI DAN SPESIFIKASI SELEKTOR
-- head :: [Int] -> Int
-- head l menghasilkan elemen pertama list l, l tidak kosong

-- tail :: [Int] -> [Int]
-- tail l menghasilkan list tanpa elemen pertama list l, l tidak kosong

-- last :: [Int] -> Int
-- last l menghasilkan elemen terakhir list l, l tidak kosong

-- init :: [Int] -> [Int]
-- init l menghasilkan list tanpa elemen terakhir list l, l tidak kosong

-- DEFINISI DAN SPESIFIKASI PREDIKAT
isEmpty :: [Int] -> Bool
-- isEmpty l  true jika list of integer l kosong
-- REALISASI
isEmpty l = null l

isOneElmt :: [Int] -> Bool
-- isOneElmt l true jika list of integer l hanya mempunyai satu elemen
-- REALISASI
isOneElmt l = (length l) == 1 

-- DEFINISI DAN SPESIFIKASI
delElement :: Int -> [Int] -> [Int]
{- delElement x l mengembalikan list l dengan elemen x yang etlah dihapus dari l.
Jika x bukan elemen dari l, maka fungsi mengembalikan l semula
Prekondisi: elemen l unik (setiap elemen hanya muncul 1 kali). -}


-- REALISASI
delElement x l
  | isEmpty l = []
  | otherwise = 
    if head l == x then delElement x (tail l)
    else (head l) `konso` delElement x (tail l)

-- APLIKASI
-- delElement 13 [7,3,9,13,15,31,19]
-- delElement 1 [6,15,4,9]
-- delElement 27 [9,15,27]
-- delElement 3 []

main = 
  do 
    print(delElement 13 [7,3,9,13,15,31,19])
    print(delElement 1 [6,15,4,9])
    print(delElement 27 [9,15,27])
    print(delElement 3 [])