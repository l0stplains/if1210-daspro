-- Split List                   splitList li

-- DEFINISI DAN SPESIFIKASI
splitList :: [Int] -> ([Int], [Int])
{- splitList li menghasilkan 2 list of integer, list
pertama memuat bilangan positif dan 0 yang merupakan 
elemen dari li (dengan urutan kemunculan yang tidak 
berubah), sedangkan list kedua memuat bilangan negatif elemen li.
Prekondisi: li mungkin kosong -}

-- REALISASI
splitList li
  | null li = ([], [])
  | otherwise =
    let 
      (pos, neg) = splitList (tail li)
    in
      if (head li >= 0) then ([head li] ++ pos, neg)
      else (pos, [head li] ++ neg)

-- APLIKASI
-- splitList [1,2,3,-1,-2,-999,10]
-- splitList [-1,-2,-3]

main =
  do
    print(splitList [1,2,3,-1,-2,-999,10])
    print(splitList [-1,-2,-3])