-- Is Ordered                   isOrdered li

-- DEFINISI DAN SPESIFIKASI
isOrdered :: [Int] -> Bool
{- isOrdered li menghasilkan true jika elemen-element pada li
terurut membesar, false jika tidak.
Prekondisi: li tidak kosong-}

-- REALISASI

isOrdered li
  | length li == 1 = True
  | otherwise = 
    if (head li <= head (tail li)) then True && isOrdered (tail li)
    else False

-- APLIKASI
-- isOrdered [1,2,3,4,5,6,7]
-- isOrdered [1,2,3,4,5,6,4]
-- isOrdered [5,2,3,4,5,6,7]
-- isOrdered [-999, -43, -1, 34, 1000000]

main = 
  do
    print(isOrdered [1,2,3,4,5,6,7])
    print(isOrdered [1,2,3,4,5,6,4])
    print(isOrdered [5,2,3,4,5,6,7])
    print(isOrdered [-999, -43, -1, 34, 1000000])