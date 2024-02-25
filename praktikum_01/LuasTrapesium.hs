module LuasTrapesium where
  -- Luas Trapesium

  -- DEFINISI DAN SPESIFIKASI
  luasTrapesium :: Float -> Float -> Float -> Float
  {- luasTrapesium t s1 s2 merupakan fungsi yang menerima masukan 3 buah bilangan real (float) t, s1, s2 
  dengan t = tinggi trapesium, s1 = panjang sisi sejajar 1, dan s2 = panjang sisi sejajar 2 (asumsikan: 
  t > 0, s1 > 0, s2 > 0, dan s1 tidak sama dengan s2) dan menghasilkan luas trapesium berdasarkan rumus:
   luas = ½ * t * (s1 + s2) -}

  -- REALISASI
  luasTrapesium t s1 s2 = 0.5 * t * (s1 + s2)