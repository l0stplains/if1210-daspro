s = input()

val = 0
for i in range(len(s)):
    c = s[i]
    if c == 'I':
        val += 1
    elif c == 'V':
        if i > 0 and s[i-1] == 'I':
            val += 3
        else:
            val += 5
    elif c == 'X':
        if i > 0 and s[i-1] == 'I':
            val += 8
        else:
            val += 10
    elif c == 'L':
        if i > 0 and s[i-1] == 'X':
            val += 30
        else:
            val += 50
    elif c == 'C':
        if i > 0 and s[i-1] == 'X':
            val += 80
        else:
            val += 100
    elif c == 'D':
        if i > 0 and s[i-1] == 'C':
            val += 300
        else:
            val += 500
    elif c == "M":
        if i > 0 and s[i-1] == 'C':
            val += 800
        else:
             val += 1000

print(val)
