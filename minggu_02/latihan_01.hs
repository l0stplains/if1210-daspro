-- APAKAH JAM VALID?                    isJamValid j m d

-- DEFINISI DAN SPESIFIKASI
isJamValid :: Int -> Int -> Int -> Bool
{- IsJamValid j m d menghasilkan nilai true jika j, m, d menyusun 
jam yang valid. Definisi jam yang valid adalah jika elemen jam (j)
 bernilai antara 0 dan 23, elemen menit (m) bernilai antara 0 dan 59,
  dan elemen detik (d) bernilai antara 0 dan 59. -}

-- REALIASASI
isJamValid j m d = (0 <= j && j <= 23) && (0 <= m && m <= 59) && (0 <= d && d <= 59)

-- APLIKASI
-- isJamValid 24 33 123

main = do
  print (isJamValid 15 16 20) -- True
  print (isJamValid 32 0 0) -- False
  print (isJamValid 23 66 0) -- False
  print (isJamValid 23 0 74) -- False
  print (isJamValid 0 0 0) -- True
