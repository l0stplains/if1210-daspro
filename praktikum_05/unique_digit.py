n = int(input())

arr = []

while(n != -9999):
    arr.append(n)
    n = int(input())

memo = [False] * 2000000 # assumption

for i in range(len(arr)):
    memo[arr[i]] = True
    for j in range(i + 1, len(arr)):
        memo[arr[i] + arr[j]] = True

for i in range(1, len(memo)):
    if not memo[i]:
        print(i)
        break
