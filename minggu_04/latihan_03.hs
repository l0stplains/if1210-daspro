-- Is Equal Front                   isEqFront t1 t2

-- DEFINISI DAN SPESIFIKASI
isEqFront :: [Char] -> [Char] -> Bool
{- isEqFront t1 t2 menerima masukan 2 buah list of character yang tidak kosong,
misalnya t1 dan t2 dan menghasilkan true jika potongan awal list t2 mengandung t1
(dengan panjang dan urutan karakter yang sama). Banyaknya elemen t2 selalu lebih dari atau sama dengan t1. -}

-- REALISASI
isEqFront t1 t2
  | null t1 = True
  | otherwise =
    if ((head t1) == (head t2)) then True && isEqFront (tail t1) (tail t2)
    else False

-- APLIKASI
-- isEqFront ['a','b','c'] ['a','b','c','d','e']
-- isEqFront ['a','b','c'] ['a','b','c']
-- isEqFront ['a','b','c'] ['a','b','a','b','c','d']
-- isEqFront ['a','b','c'] ['a','b','d','a','b','c']

main = 
  do 
    print(isEqFront ['a','b','c'] ['a','b','c','d','e'])
    print(isEqFront ['a','b','c'] ['a','b','c'])
    print(isEqFront ['a','b','c'] ['a','b','a','b','c','d'])
    print(isEqFront ['a','b','c'] ['a','b','d','a','b','c'])