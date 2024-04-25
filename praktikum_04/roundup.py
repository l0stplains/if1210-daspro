n = int(input())

if n < 1:
    print("Tidak valid")
else:
    arr = list(map(int, input().split(" ")))
    x = int(input())

    mini1 = 1001
    mini2 = 1002

    for i in range(n):
        if arr[i] <= x:
            arr[i] = 1003

    for i in arr:
        if i < mini1:
            mini2 = mini1
            mini1 = i
        elif i < mini2:
            mini2 = i
    print(mini2 if mini2 < 1001 else -1)
