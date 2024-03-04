-- a. Sum Isi List                    sumIsiList li
-- b. Filter Ganjil                   filterGanjil li

-- DEFINISI DAN SPESIFIKASI
sumIsiList :: [Int] -> Int
{- sumIsiList li menghitung hasil penjumlahan dari seluruh elemen
sebuah list of integer li yang tidak kosong -}

filterGanjil :: [Int] -> [Int]
{- filterGanjil li melakukan filtering terhadap sebuah list of integer li
sehingga menghasilkan list dengan elemen yang hanya terdiri atas bilangan ganjil
yang muncul di li. Diasumsikan semua selemen li adalah bilangan integer positif atau 0,
li mungkin kosong. -}

-- REALISASI
sumIsiList li
  | null li = 0
  | otherwise = head li + sumIsiList (tail li)

filterGanjil li
  | null li = []
  | otherwise =
    if (mod (head li) 2 == 1) then [head li] ++ (filterGanjil (tail li))
    else filterGanjil (tail li)

-- APLIKASI
-- sumIsiList [1,2,3,4,5,6,7,8,9,10]
-- filterGanjil [1,2,3,4,5,6,7,8,9,10]

main = 
  do 
    print(sumIsiList  [1,2,3,4,5,6,7,8,9,10])
    print(filterGanjil  [1,2,3,4,5,6,7,8,9,10])