s = input()

isValid = True
stack = []
for c in s:
    if c == '(' or c == '[' or c == '{':
        stack.append(c)
    else:
        if len(stack):
            l = stack[-1]
            if (l == '(' and c != ')') or (l == '[' and c != ']') or (l == '{' and c != '}'):
                isValid = False
                break
            else:
                stack.pop()
        else:
            isValid = False
            break

if isValid and len(stack) == 0:
    print("valid")
else:
    print("tidak valid")
