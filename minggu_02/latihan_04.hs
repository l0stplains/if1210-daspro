-- NILAI TENGAH                   nilaiTengah a b c

-- DEFINSI DAN SPESIFIKASI
nilaiTengah :: Int -> Int -> Int -> Int
{- nilaiTengah a b c mengembalikan sebuah integer yang merupakan salah 
satu dari ke-3 nilai tersebut yang jika diurutkan berada di tengah -}
min2 :: Int -> Int -> Int
{- min2 a b mengembalikan bilangan terkecil -}
max2 :: Int -> Int -> Int
{- max2 a b mengembalikan bilangan terbesar -}

-- REALISASI
min2 a b = div (a+b - abs(a-b)) 2

max2 a b = div (a+b + abs(a-b)) 2

nilaiTengah a b c =
  let
    min3 = 
      let 
        min2ab = min2 a b
        min2bc = min2 b c
      in 
        min2 min2ab min2bc
    max3 =
      let 
        max2ab = max2 a b
        max2bc = max2 b c
      in
        max2 max2ab max2bc
    in
      a + b + c - min3 - max3

-- APLIKASI
-- nilaiTengah 1 2 3
-- nilaiTengah 3 1 2
-- nilaiTengah 6 4 5

main = 
  do
    print (nilaiTengah 1 2 3)
    print (nilaiTengah 3 1 2)
    print (nilaiTengah 6 4 5)
    print (nilaiTengah 11343 9999999999 0)
