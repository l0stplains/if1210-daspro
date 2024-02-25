module KlasifikasiKomputer where

  klasifikasi :: Int -> Int -> Int -> Int

  klasifikasi c g h 
    | c > 7 && g > 7 && h > 7 = 5
    | c < 2 || g < 2 || h < 2 = 1
    | c < 5 || g < 5 = 2
    | c <= 7 && g <= 7 && h <= 7 = 3
    | otherwise = 4