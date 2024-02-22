-- Sum Of Digits                    sumOfDigits n

-- DEFINISI DAN SPESIFIKASI
sumOfDigits :: Int -> Int
{- sumOfDigits n menghitung hasil penjumlahan dari setiap bilangan tunggal
yang terdapat di dalam sebuah bilangan integer positif -}

sumOfDigitsPosNeg :: Int -> Int
{- sumOfDigitsPosNeg merupakan fungsi untuk menangani bilangan negatif dari fungsi
sumOfDigits dengan mengabaikan tanda '-' -}


-- REALISASI
sumOfDigits n 
  | n < 0 = sumOfDigitsPosNeg n
  | n == 0 = 0
  | otherwise = mod n 10 + sumOfDigits (div n 10)

sumOfDigitsPosNeg n =
   mod (abs n) 10 + sumOfDigits (div (abs n) 10)

-- APLIKASI
-- sumOfDigits 123
-- sumOfDigits 1
-- sumOfDigits 123456789

main = 
  do
    print(sumOfDigits (-123))
    print(sumOfDigits 1)
    print(sumOfDigits 123456789)