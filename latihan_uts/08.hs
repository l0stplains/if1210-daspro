-- SOAL
{- 
List dan Operasinya
Diketahui definisi primitif tipe list of integer berikut ini. Semua primitif list dapat langsung digunakan (tidak perlu dibuat realisasinya).

Tuliskan realisasi dari fungsi berikut (definisi dan spesifikasi fungsi tidak perlu ditulis ulang). Tidak diperkenankan membuat dan menggunakan 
fungsi antara baru (boleh menggunakan yang sudah tersedia pada soal ini).

sortList :: [Int] -> [Int]
fungsi mengembalikan hasil pengurutan list l hingga elemen elemenya terurut membesar.
Prekondisi: l tidak kosong dan semua elementnya unik.
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
sortList :: [Int] -> [Int]
{- sortList l mengembalikan hasil pengurutan list l hingga elemen-elemennya terurut membesar.
Prekondisi: l tidak kosong dan semua elemenya unik. -}

maxy :: Int -> [Int] -> [Int]
{- msxy x l mengembalikan list dengan elemen terakhir merupakan elemen terbesar -}


-- REALISASI
maxy x l 
  | isOneElmt l = 
    if x < head l then x `konso`l
    else l `konsDot` x
  | otherwise = 
    if x < head l then x `konso` maxy (head l) (tail l)
    else head l `konso` maxy x (tail l)

sortList l 
  | isOneElmt l = l
  | otherwise =
    sortList (init maksLast) `konsDot` last maksLast
    where 
      maksLast = maxy (head l) (tail l)

-- APLIKASI
-- sortList [7,3,9,13,15,31,19]
-- sortList [6,15,4,9]
-- sortList [9,15,27]

main =
  do
    print(sortList [7,3,9,13,15,31,19])
    print(sortList [6,15,4,9])
    print(sortList [9,15,27])