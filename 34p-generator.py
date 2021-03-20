import random

s = 'c('
END = 100

for i in range(END):
    s += '"' + random.choice(['A', 'B', 'AB', 'O']) + '"'
    if i != END - 1:
        s += ','
s += ")"
print(s)
