module ListOfInteger where
  -- DEFINISI DAN SPESIFIKASI LIST
  {- type List of Int: [ ] atau [e o List] atau [List o e]  
    Definisi type List of Int
    Basis: List of Int kosong adalah list of Int 
    Rekurens: 
    List tidak kosong dibuat dengan menambahkan sebuah elemen bertype Int di awal 
    sebuah list atau
    dibuat dengan menambahkan sebuah elemen bertype Int di akhir sebuah list -}

  -- DEFINISI DAN SPESIFIKASI KONSTRUKTOR
  konso :: Int -> [Int] -> [Int]
  {- konso e li menghasilkan sebuah list of integer dari e (sebuah integer) dan li 
    (list of integer), dengan e sebagai elemen pertama: e o li -> li' -}
  -- REALISASI
  konso e li = [e] ++ li

  konsDot :: [Int] -> Int -> [Int]
  {- konsDot li e menghasilkan sebuah list of integer dari li (list of integer) dan 
    e (sebuah integer), dengan e sebagai elemen terakhir: li o e -> li' -}
  -- REALISASI
  konsDot li e = li ++ [e]

  -- DEFINISI DAN SPESIFIKASI SELEKTOR
  -- head :: [Int] -> Int
  -- head l menghasilkan elemen pertama list l, l tidak kosong

  -- tail :: [Int] -> [Int]
  -- tail l menghasilkan list tanpa elemen pertama list l, l tidak kosong

  -- last :: [Int] -> Int
  -- last l menghasilkan elemen terakhir list l, l tidak kosong

  -- init :: [Int] -> [Int]
  -- init l menghasilkan list tanpa elemen terakhir list l, l tidak kosong

  -- DEFINISI DAN SPESIFIKASI PREDIKAT
  isEmpty :: [Int] -> Bool
  -- isEmpty l  true jika list of integer l kosong
  -- REALISASI
  isEmpty l = null l

  isOneElmt :: [Int] -> Bool
  -- isOneElmt l true jika list of integer l hanya mempunyai satu elemen
  -- REALISASI
  isOneElmt l = (length l) == 1 

  -- DEFINISI DAN SPESIFIKASI isMember
  isMember :: [Int] -> Int -> Bool
  {- isMember l x menerima masukan sebuah list of integer, 
  misalnya l, dan sebuah integer, misalnya x, dan 
  menghasilkan true jika x adalah salah satu member (anggota) dalam list l. 
  Menghasilkan false jika tidak, atau jika list l kosong.  -}

  -- REALISASI
  isMember l x 
    | isEmpty l = False
    | otherwise = head l == x || isMember (tail l) x

  -- Definisi dan Spesifikasi

  minList :: [Int] -> Int

  {- minList l mengembalikan nilai minimum dari seluruh elemen list -}

  

  nbX :: Int -> [Int] -> Int

  {- nbX x l menghasilkan banyaknya kemunculan x pada l -}

  

  jmlMin :: [Int] -> (Int,Int)

  {- jmlMin l menghasilkan tuple (a,b) dengan:
        a adalah nilai minimum dari elemen-elemen l dan

        b adalah jumlah kemunculan a pada l -}

  -- REALISASI
  minList li 
    | isOneElmt li = head li
    | otherwise = 
      if head li < curMin then head li
      else curMin
        where
          curMin = minList (tail li)
  
  nbX x li
    | isEmpty li = 0
    | otherwise = 
      if head li == x then 1 + nbX x (tail li)
      else nbX x (tail li)

  jmlMin l =
    (mini, nbX mini l)
      where
        mini = minList l

  -- DEFINISI DAN SPESIFIKASI FUGNSI pecahListGanjilGenap
  pecahListGanjilGenap :: [Int] -> ([Int], [Int], [Int])
  {- pecahListGanjilGenap l menerima masukan sebuah list of integer (l) dan mengembalikan 
  tiga buah list of integer (l1, l2, l3). l1 memuat semua elemen l yang merupakan bilangan 
  negatif dan 0, l2 memuat semua elemen l yang merupakan bilangan positif dan ganjil, 
  sedangkan l3 memuat semua elemen l yang merupakan bilangan positif dan genap.
   Urutan kemunculan elemen pada l1 dan l2 tetap sama dengan urutan elemen pada l. -}

  -- REALISASI
  pecahListGanjilGenap l 
    | isEmpty l = ([], [], [])
    | otherwise =
      if head l <= 0 then ((head l) `konso` neg, posGanjil, posGenap)
      else if head l `mod` 2 == 1 then (neg, (head l) `konso` posGanjil, posGenap)
      else (neg, posGanjil, (head l) `konso` posGenap)
      where
        (neg, posGanjil, posGenap) = pecahListGanjilGenap (tail l)