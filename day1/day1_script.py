filename = "day1/day1_input.txt"
changes = open(filename,"r")

freq = [int(0)]
for line in changes: 
    new_freq = freq[-1] + int(line)

    # result for part 2
    if new_freq in freq:
        print("First reoccuring frequency: "+str(new_freq))
        break
    freq.append(new_freq)

# result for part 1
print("Final frequency: "+str(freq[-1]))
# print(freq)

# freq.sort()
# for n in range(1,len(freq)):
#     if freq[n] == freq[n-1]:
#         print("Reoccurring frequency :"+str(freq[n]))
