-- Filter List                    filterList cond li

-- DEFINISI DAN SPESIFIKASI
filterList :: (Int->Bool) -> [Int] -> [Int]
{- filterList cond li melakukan filtering terhadal elemen list
dan menghasilkan list baru dengan elemen yang lolos kriteria filter kond -}

isPos :: Int -> Bool
{- isPos x mengecek apakah x positif -}

isNeg :: Int -> Bool
{- isNeg x mengecek apakah x negatif -}

isKabisat :: Int -> Bool
{- isKabisat x mengecek apakah x kabisat -}

-- REALISASI
isPos x = x > 0

isNeg x = x < 0

isKabisat x = mod x 4 == 0

filterList cond li
  | null li = []
  | otherwise =
    if (cond (head li)) then [head li] ++ filterList cond (tail li)
    else filterList cond (tail li)

-- APLIKASI
-- filterList isPos [1,2,3,4,5,-4,-2,6,-2]
-- filterList isNeg [-1,-2,-3,4,5,-6,7]
-- filterList isKabisat [2000, 2001, 2005, 2024]

main =
  do 
    print(filterList isPos [1,2,3,4,5,-4,-2,6,-2])
    print(filterList isNeg [-1,-2,-3,4,5,-6,7])
    print(filterList isKabisat [2000, 2001, 2005, 2024])