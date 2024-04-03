ip = float(input())
pot = float(input())

kategori = 0

if ip >= 3.5:
    kategori = 4
else:
    if pot < 1:
        kategori = 1
    elif pot < 5:
        if ip >= 2:
            kategori = 3
        else:
            kategori = 2
    else:
        kategori = 0

print(kategori)
