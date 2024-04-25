# Program BelahKetupat
# Input: N : integer
# Output: Jika N > 0 dan ganjil, gambar belah ketupat sesuai dengan N
#         Jika tidak, tampilkan pesan kesalahan: 

def GambarBelahKetupat(n):
    for i in range(n // 2 + 1):
        l = i * 2 + 1
        for j in range((n - l) // 2):
            print(" ", end="")
        for j in range(l):
            print("*", end="")
        print()
    for i in range(n // 2):
        l = n - (i + 1) * 2
        for j in range((n - l) // 2):
            print(" ", end="")
        for j in range(l):
            print("*",end="")
        print()
# I.S. N > 0 dan N ganjil
# F.S. Gambar belah ketupat dengan panjang diagonal mendatar sebesar N
#      sesuai spesifikasi soal
    ...

def IsValid(n):
    return n % 2 and n > 0
# menghasilkan true jika N positif dan ganjil, false jika tidak
    ...

# ALGORITMA PROGRAM UTAMA
N = int(input())
if (IsValid(N)):  # lengkapi dengan pemanggilan fungsi IsValid
    GambarBelahKetupat(N)    # lengkapi dengan pemanggilan prosedur GambarBelahKetupat
else: # N tidak positif atau N tidak ganjil
    print("Masukan tidak valid")
