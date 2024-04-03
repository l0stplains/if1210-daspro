-- SOAL 
{- 
Ekspresi Dasar
Fungsi ubahArah, menerima masukan berupa dua buah integer. Integer pertama (s) bernilai antara 0 hingga 359,
 merepresentasikan arah pergerakan sebuah benda (dalam satuan derajat). Integer kedua (r) bernilai antara -359 
 hingga 359 menyatakan besar perubahan arah pergerakan benda tersebut (dalam satuan derajat): nilai positif menyatakan
perubahan arah ke kanan (searah jarum jam), sedangkan nilai negatif menyatakan perubahan arah ke kiri 
(berlawanan arah jarum jam). Fungsi akan mengembalikan bilangan integer antara 0 sampai 359, yang menyatakan arah
 pergerakan yang baru setelah diubah sebesar a derajat. Karena sudut paling besar adalah 360 derajat, maka 360 deraja
 t sama dengan 0 derajat.


Buatlah realisasi dan contoh aplikasi berikut hasilnya (minimum 2 buah) dari fungsi ubahArah (definisi dan spesifikasi
 untuk fungsi tidak perlu ditulis ulang).
 -}

-- DEFINISI DAN SPESIFIKASI
ubahArah :: Int -> Int -> Int
{- ubahArah s r adalah fungsi yang menerima masukan dua buah integer s dan r yang merepresentasikan arah pergerakan
dan besar perubahan arah yang akan dilakukan (dalam satu derajat). Fungsi mengembalikan arah pergerakan
yang baru adlam range 0 s.d. 359, setelah s diputar sebesar r. -}

-- REALISASI
ubahArah s r = mod (s + r) 360

-- APLIKASI
-- ubahArah 50 100
-- ubahArah 350 100
-- ubahArah 10 -100
-- ubahArah 358 -359

main = 
  do
    print(ubahArah 50 100)
    print(ubahArah 350 100)
    print(ubahArah 10 (-100))
    print(ubahArah 358 (-359))
    print(ubahArah 20 ((-360) * 5 - 40))
