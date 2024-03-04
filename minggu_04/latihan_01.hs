-- a. Faktor dari X                    countFactorOfX n l
-- b. Delete n th element                    delNthElmt

-- DEFINISI DAN SPESIFIKASI
countFactorOfX :: Int -> [Int] -> Int
{- countFactorOfX n l mengembalikan banyaknya kemunculan bilangan yang
merupakan faktor dari n pada l -}

delNthElmt :: Int -> [Char] -> [Char]
{- delNthElmt n l menghilangkan elemen ke-n dari l.
Asumsi: n lebih kecil atau sama dengan jumlah elemen l;
l tidak kosong -}

isEmpty :: [Int] -> Bool
{- isEmpty li mengecek apakah list kosong -}

isEmptyChar :: [Char] -> Bool
{- isEmptyChar li mengembalikan apakah list character kosong -}

konso :: Char -> [Char] -> [Char]
{- konso x li menambahkan x ke awal list -}


-- REALISASI
isEmpty li = null li

isEmptyChar li = null li

konso x li = [x] ++ li

countFactorOfX n l 
  | isEmpty l = 0
  | otherwise = if (mod n (head l) == 0) then 1 + countFactorOfX n (tail l) else 0 + countFactorOfX n (tail l)

delNthElmt n l
  | isEmptyChar l = []
  | otherwise =
    if n == 1 then delNthElmt (n-1) (tail l)
    else konso (head l) (delNthElmt (n-1) (tail l))

-- APLIKASI
-- countFactorOfX 15 [2,3,4,5]
-- delNthElmt 4 ['A', 'B', 'C', 'D', 'E']

main = 
  do
    print(countFactorOfX 15 [2,3,4,5])
    print(delNthElmt 4 ['A', 'B', 'C', 'D', 'E'])