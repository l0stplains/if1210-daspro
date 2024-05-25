import tester

tester.start('input.txt')

total = 0
lines = []
with open('input.txt', 'r') as f:
    for line in f:
        lines.append(line)


total = int(lines[0])

if total <= 0:
    total = 0

print("Jumlah layer:", total)

curr = 1
i = 1
while i < total and total:

    print()
    print("Layer ke-{curr}".format(curr=curr))
    print("Fungsi aktivasi:", lines[i], end="")
    jumlah_neuron = int(lines[i+1])

    print("Jumlah neuron:", jumlah_neuron)
    weight = []
    temp = ""
    for j in range(jumlah_neuron):
        for char in lines[i + 2 + j]:
            if char == " " or char == "\n":
                weight.append(temp)
                temp = ""
            else:
                temp += char
        if temp:
            weight.append(temp)
            temp = ""

    print("Weight neuron:", weight)

    bias = []
    for char in lines[i + 2 + jumlah_neuron]:
        if char == " " or char == "\n":
            bias.append(temp)
            temp = ""
        else:
            temp += char
    if temp:
        bias.append(temp)
        temp = ""

    print("Bias:", bias)

    curr += 1
    i += 3 + jumlah_neuron

tester.end("input.txt")



    

