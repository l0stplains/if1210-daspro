import tester

tester.start("input.csv")

lines = []

with open('input.csv', 'r') as f:
    for line in f:
        res = []
        temp = ""
        for char in line:
            if char == "," or char == '\n':
                res.append(temp)
                temp = ""
            else:
                temp += char
        if temp:
            res.append(temp)
        lines.append(res)
data = {}
occ = {}

for i in range(1, len(lines)):
    keys = []
    for key in data:
        keys.append(key)
    if not lines[i][1] in keys:
        data[lines[i][1]] = 0
        occ[lines[i][1]] = 0
    data[lines[i][1]] += int(lines[i][2])
    occ[lines[i][1]] += 1

sum = 0
cnt = 0
for key in data:
    print(data[key])
    sum += data[key]
    cnt += 1
if len(lines) < 2:
    print('Data kosong')
else:
    print(sum // cnt)

tester.end('input.csv')

