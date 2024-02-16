module DeretAritmatika where

  -- DEFINISI DAN SPESIFIKASI
  deretAritmatika :: Int -> Int -> Int -> Float
  {- deretAritmatika n a b merupakan fungsi yang menerima masukkan 3 nilai integer, yaitu n, a, dan b. Parameter a merupakan suku pertama dari suatu barisan aritmatika yang memiliki beda b. -}

  -- REALISASI
  deretAritmatika n a b = fromIntegral(n*(2*a + (n-1)*b))/2