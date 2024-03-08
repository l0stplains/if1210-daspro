module Duel where
  
  -- DEFINISI DAN SPESIFIKASI 
  duel :: [String] -> [String]
  {- duel li adalah fungsi yang mengubah setiap kemunculan kata "desperado"
  menjadi "BANG" -}

  -- REALISASI

  duel li 
    | null li = []
    | otherwise = 
      if head li == "desperado" then ["BANG"] ++ duel (tail li)
      else [head li] ++ duel (tail li)