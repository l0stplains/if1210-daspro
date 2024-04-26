n = int(input())
a = list(map(int, input().strip().split()))

table = [0] * 1000000 # assumption

for i in range(n):
    table[a[i] + 450000] += 1

maks = -1

for i in table:
    if i > maks:
        maks = i

for i in range(1, len(table)):
    if table[i] == maks:
        print(i - 450000)
        break

