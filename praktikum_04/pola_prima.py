n = int(input())

def isPrime(x):
    for i in range(2, int(x**0.5) + 1):
        if x % i == 0:
            return False
    return True

if n < 1:
    print("Tidak valid")
else:
    arr = [2 for i in range(n)]
    for i in range(1,n):
        temp = arr[i - 1] + 1 + arr[i - 1] % 2
        while(not isPrime(temp)):
            temp += 2
        arr[i] = temp

    for i in range(n):
        for j in range(i, 0, -1):
            print(arr[j], end=" ")
        for j in range(n - i):
            print(arr[j], end="")
            if j != n - i - 1:
                print(" ", end="")
        print()
        

