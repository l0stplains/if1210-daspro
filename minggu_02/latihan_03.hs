-- APAKAH DATE VALID?                   isDateValid d m y

-- DEFINISI DAN SPESIFIKASI 
isDateValid :: Int -> Int -> Int -> Bool
{- isDateValid d m y mengembalikan nilai true jika d, m, y membentuk 
date yang valid. Definisi date yang valid adalah jika elemen hari (d) 
bernilai antara 1 dan 31, bertantung pada bulan dan apakah tahun 
kabisat atau bukan, elemen bulan (m) bernilai antara 1 dan 12, dan 
elemen tahun (y) bernilai antara 0 dan 99. Nilai y mewakili tahun 1900 
s.d. 1999 -}

-- REALISASI
isDateValid d m y = 
  let
    dayValid
      | m == 2 = 
        if (mod y 4 == 0) then ( d > 0 && d <= 28)
        else ( d > 0 && d <= 29)
      | otherwise =
        if (m < 8) then 
          if (mod m 2 == 0) then (d > 0 && d <= 30)
          else  (d > 0 && d <= 31)
        else 
          if (mod m 2 == 0) then (d > 0 && d <= 31)
          else ( d > 0 && d <= 30)
    monthValid = (m > 0 && m <= 12)
    yearValid = (y >= 0 && y <= 99)
  in 
    dayValid && monthValid && yearValid

-- APLIKASI
-- isDateValid 29 2 96
-- isDateValid 29 2 97

main =
  do
    print (isDateValid 31 1 99)
    print (isDateValid 0 2 2)
    print (isDateValid 29 2 0)
    print (isDateValid 29 2 1)
    print (isDateValid 31 8 99)
    print (isDateValid 30 4 99)
    print (isDateValid 28 2 100)