n = int(input())
a = list(map(int, input().strip().split()))

pos = -1

mini = a[0]
isOk = True

for i in range(n-1):
    if a[i] > a[i + 1]:
        pos = i
        break

if pos != -1:
    for i in range(pos + 1, n-1):
        if a[i] > a[i + 1]:
            isOk = False

if isOk:
    if pos != -1 and a[0] > a[n-1]:
        print((n - pos - 1) % n)
    elif pos == -1:
        print(0)
    else:
        print("Tidak")
else:
    print("Tidak")
