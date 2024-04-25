n = int(input())
x = int(input())

a = list(map(int, input("").split()))

same = 0
close = x
far = x

for i in a:
    if i == x:
        same = i
    else:
        diff = abs(i - x)
        if not (close - x) or abs(close - x) > diff:
            close = i
        if not (far - x) or abs(far - x) < diff:
            far = i

print(same if same else "TIDAK ADA")
print(close if (close - x) else "TIDAK ADA")
print(far if (far - x) else "TIDAK ADA")


