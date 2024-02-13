-- JUMLAH DETIK DARI SUATU JAM                   detikInJam j m d

-- DESKRIPSI DAN SPESIFIKASI
detikInJam :: Int -> Int -> Int -> Int
{- detikInJam j m d menghitung jumlah detik dari jam j:m:d tersebut 
mulai dari jam 0:0:0 -}

-- REALISASI
detikInJam j m d = (60 * 60 * j) + (60 * m) + (d)

-- APLIKASI
-- detikInJam 23 0 5

main = do
  print (detikInJam 15 16 20) 
  print (detikInJam 0 0 0)
