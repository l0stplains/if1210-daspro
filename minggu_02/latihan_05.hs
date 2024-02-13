-- KONVERSI QUARTER, DIME, NICKEL, PENNY KE DOLLAR, SEN                   toDollarSen q d n p

-- DEFINISI DAN SPESIFIKASI
toDollarSen :: Int -> Int -> Int -> Int -> (Int, Int)
{- toDollarSen q d n p mengonversi sejumlah koin quarter, dime, nickel, 
dan penny dan menghasilkan berapa dollar dan berapa sen yang senilai 
dengan total koin-koin tersebut.  -}

-- REALISASI
toDollarSen q d n p = 
  let 
    total = q * 25 + d * 10 + n * 5 + p
  in 
    (div total 100,
    mod total 100)
-- APLIKASI
-- toDollarSen 8 20 30 77

main = print (toDollarSen 8 20 30 77)

