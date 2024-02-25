module KonversiSuhu where
  -- Konversi Suhu

  -- DEFINISI DAN SPESIFIKASI
  konversiSuhu :: Float -> Char -> Float
  {- konversiSuhu merupakan fungsi yang digunakan untuk mengkonversi suhu dari 
  satu satuan Celcius ke satuan suhu yang lain, yaitu Fahrenheit, Reamur, atau Kelvin. 
  Contoh:
  konversiSuhu (25, 'R') artinya adalah konversi suhu 25 derajat Celcius ke suhu dalam derajat Reamur.-}

  -- REALISASI
  konversiSuhu c s 
    | s == 'R' = 4 / 5 * c
    | s == 'F' = (9 / 5 * c) + 32
    | s == 'K' = c + 273.15
    | otherwise = -1

  