filename = "day1/day1_input.txt"
changes = open(filename,"r")

freq = 0
for line in changes: 
    freq = freq + int(line)

print("Final frequency: "+str(freq))
