n = int(input())
m = int(input())

arr = [m]
print(*arr)
for i in range(n-1):
    temparr = [m]
    for j in range(1, i + 1):
        temparr.append(arr[j] + arr[j-1])
    temparr.append(m)
    print(*temparr)

    arr = temparr
