import tester

tester.start("input.txt")

lines = []
with open('input.txt', 'r') as f:
    for line in f:
        if line != '\n':
            res = []
            temp = ""
            for char in line:
                if char == " " or char == "\n":
                    res.append(temp)
                    temp = ""
                else:
                    temp += char
            if temp:
                res.append(temp)
            lines.append(res)

ans1 = {}
ans2 = {}
for word in lines[0]:
    for word2 in lines[1]:
        if word == word2:
            ans1[word] = 0
            ans2[word] = 0
            for a in lines[0]:
                if a == word:
                    ans1[word] += 1
            for b in lines[1]:
                if b == word:
                    ans2[word] += 1

if not ans1 and not ans2:
    print("Tidak ada kata yang sama")
else:
    for key in ans1:
        print("{a},{b},{c}".format(a=key,b=ans1[key],c=ans2[key]))

tester.end("input.txt")
