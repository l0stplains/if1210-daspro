import tester

tester.start('output.txt')

res = ""
q = input()


ans = [0,0,0,0,0]

word = ""

for char in q:
    if char == ".":
        break
    word += char

    if char == 'a' or char == 'A':
        ans[0] += 1
    if char == 'i' or char == 'I':
        ans[1] += 1
    if char == 'u' or char == 'U':
        ans[2] += 1
    if char == 'e' or char == 'E':
        ans[3] += 1
    if char == 'o' or char == 'O':
        ans[4] += 1
total = 0
for i in ans:
    res += str(i)
    total += i
res += '\n'
res += str(total)
res += '\n'
if total:
    res += word
else:
    res += "Tidak ada huruf"

with open('output.txt', 'w') as f:
    f.write(res)

tester.end('output.txt')
