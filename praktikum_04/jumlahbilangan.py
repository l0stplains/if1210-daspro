x = int(input())
y = int(input())
ans = 0

for i in range(x, y+1):
    if i % 3 == 0 or i % 4 == 0:
        ans += 1

print(ans if ans else "Tidak Ada")

