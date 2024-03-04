-- Merge List                   mergeList li1 li2

-- DEFINISI DAN SPESIFIKASI
mergeList :: [Int] -> [Int] -> [Int]
{- mergeList li1 li2 menghasilkan list of integer yang
merupakan hasil penggabungan li1 dan li2, dan tetap
terurut membesar.
Prekondisi: li1 dan li2 adalah list terururt membesar dan mungkin kosong. -}

-- REALISASI
mergeList li1 li2
  | null li1 = li2
  | null li2 = li1
  | otherwise = 
    if ((head li1) < (head li2)) then [head li1] ++ mergeList (tail li1) (li2)
    else [head li2] ++ mergeList (li1) (tail li2)

-- APLIKASI
-- mergeList [1,3,5,7] [0,2,4,6]
-- mergeList [123, 134, 534] [1,2,3]
-- mergeList [1,2,3] [4,5,6]

main =
  do
    print(mergeList [1,3,5,7] [0,2,4,6])
    print(mergeList [123, 134, 534] [1,2,3])
    print(mergeList [1,2,3] [4,5,6])