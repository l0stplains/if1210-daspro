n = int(input())
a = list(map(int, input().strip().split()))

mini = abs(a[1] - a[0])
for i in range(n):
    for j in range(i+1, n):
        cur = abs(a[i] - a[j])
        if cur < mini:
            mini = cur

print(mini)

