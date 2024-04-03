x = int(input())

if x < 0:
    print("-", end="")
    x *= -1

ans = 0

while x != 0:
    ans *= 10
    ans += x % 10
    x = x // 10

print(ans)
