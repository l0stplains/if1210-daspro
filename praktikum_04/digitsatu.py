def digit_sum(num):
    total = 0
    while num > 0:
        total += num % 10
        num //= 10
    return total

n = int(input())

if n > 0:
    arr = list(map(int, input().split()))

steps = 0
for i in range(n):
    while arr[i] > 9:
        arr[i] = digit_sum(arr[i])
        steps += 1

print(steps)
