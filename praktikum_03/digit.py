occ = [0 for i in range(10)]

bil = 0
while bil < 100:
    x = int(input())
    if x < 0:
        break
    if x == 0:
        occ[0] += 1
    bil += 1

    while x != 0:
        occ[x % 10] += 1
        x = x // 10

print(bil)
for i in range(10):
    if occ[i]:
        print(i, ":", occ[i])
    


