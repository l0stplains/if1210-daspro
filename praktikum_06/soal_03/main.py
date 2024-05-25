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


for i in range(1, len(lines)):
    for j in range(1, len(lines) - 1):
        if int(lines[j][2]) > int(lines[j+1][2]):
            temp = lines[j]
            lines[j] = lines[j+1]
            lines[j+1] = temp

total = 0
for i in range(1, len(lines)):
    if int(lines[i][3]) >= 75:
        total += 1

print(total)
print(lines[2][2])

tester.end("input.csv")



    
