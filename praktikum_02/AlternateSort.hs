module AlternateSort where

  -- DEFINISI DAN SPESIFIKASI
  alternateSort :: [Int] -> [Int]
  {- alternateSort l adalah sebuah algoritma prosedural sebagai berikut.

    1. Urutkan list tersebut

    2. Bagi list menjadi 2 sama besar, misal l1 dan l2. Jika panjang list ganjil, maka l1 akan memiliki 1 elemen lebih banyak dibanding l2

    3. Ambil elemen terkecil dari l1, masukkan ke akhir l3.

    4. Ambil elemen terbesar dari l2, masukkan ke akhir l3.

    5. Ulangi langkah 3 dan 4 sampai kedua list kosong.



    Contohnya, jika list awal adalah [9,10,11,12], maka l3 akan menjadi [9,12,10,11]

    -}

  alternateSort l = 
    mergeList a b
    where
      (a, b) = splitList (sortList l) (div (length l) 2 + (mod (length l) 2))

    


  -- DEFINISI DAN SPESIFIKASI FUNGSI PENDUKUNG

  sortList :: [Int] -> [Int]
  {- sortList li melakukan sorting/pengurutan pada li -}

  splitList :: [Int] -> Int -> ([Int], [Int])
  {- splitList li x memecah list menjadi dua bagian, yang bagian pertamanya
  memiliki panjang x -}

  mergeList :: [Int] -> [Int] -> [Int]
  {- mergeList l1 l2 adalah fungsi yang menggabungkan 2 list dengan aturan
  menambah elemen pertama l1 lalu menambah elemen terakhir l2, lalu dilakukan
  selang-seling-}

  insert :: Int -> [Int] -> [Int]
  {-insert x li memasukan x pada list-}

  isSorted :: [Int] -> Bool
  {-isSorted li mengecek apakah list sudah terurut-}

  -- REALISASI

  insert x li 
    | null li = [x]
    | otherwise =
      if x > head li then [head li] ++ insert x (tail li)
      else [x] ++ insert (head li) (tail li)

  isSorted li
    | length li < 2 = True
    | otherwise = head li <= head (tail li) && isSorted (tail li)

  sortList li
    | length li <= 1 = li
    | otherwise = sortList (init high) ++ [(last high)] 
    where
      high = insert (last li) (init li)

  splitList li x 
    | null li = ([], [])
    | x == 0 = ([], li)
    | otherwise = ([head li] ++ a, b)
    where
      (a,b) = splitList (tail li) (x-1)

  mergeList l1 l2
    | null l1 && null l2 = []
    | null l2 = l1
    | otherwise = [head l1, last l2] ++ mergeList (tail l1) (init l2)