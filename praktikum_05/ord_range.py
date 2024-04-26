A = input()
B = input()

if ord("A") <= ord(A) <= ord("Z") and ord("A") <= ord(B) <= ord("Z"):
    
    

    if ord(A) > ord(B):
        temp = A
        A = B
        B = temp

    ans = (ord(B) - ord(A))
    ans2 = (ord(A) + 26 - ord(B))

    print(ans if ans < ans2 else ans2)

else:
    print("Tidak valid")
