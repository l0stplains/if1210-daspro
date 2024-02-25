module JamBangun where

  jamBangun :: Int -> Int -> Int -> (Bool, Int, Int, Int)
  
  -- another approach is converting everything to seconds first
  jamBangun j m d = 
    let
      telat = (j < 7) || (j == 7 && m < 45)
      selisihDetik
        | telat = mod (60 - d) 60
        | otherwise = d
      selisihMenit
        | (telat && selisihDetik > 0 ) = 
          if m <= 45 then 45 - m - 1 else 45 + 60 - m - 1
        | (telat && d == 0) = 
          if m <= 45 then 45 - m else 45 + 60 - m
        | (telat == False) =
          if m >= 45 then m - 45 else 15 + m
      selisihJam
        | telat =
          if m >= 45 then 7 - j - 1 else 7 - j
        | otherwise =
          if m >= 45 then j-7 else j-7-1

    in
      (telat, selisihJam, selisihMenit, selisihDetik)