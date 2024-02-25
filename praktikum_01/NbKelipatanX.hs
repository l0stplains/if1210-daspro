module NbKelipatanX where
  
  -- DEFINISI DAN SPESIFIKASI
  nbKelipatanX :: Int -> Int -> Int -> Int
  {- nbKelipatanX m n x adalah fungsi yang menerima masukan dua buah integer positif (integer > 0), misalnya m dan n, serta sebuah integer positif lain, yaitu x, dan menghasilkan banyaknya bilangan kelipatan x di antara m dan n (m dan n termasuk) dengan menggunakan ekspresi rekursif.

  Bilangan y disebut kelipatan bilangan x, jika y habis dibagi dengan x.

  Prekondisi/syarat/asumsi yang berlaku adalah m <= n dan x <= n.-}

  nbKelipatanX m n x
    | m == n = if (mod m x) == 0 then 1 else 0
    | otherwise = if (mod m x) == 0 then 1 + nbKelipatanX (m+1) n x else nbKelipatanX (m+1) n x