input_file = "day2/day2_input.txt"
boxes = open(input_file, "r",newline='\n')

two_count = 0
three_count = 0

for line in boxes:
    id = line[:-1]
    letters = {}
    for char in line:
        if char in letters:
            letters[char] = letters[char] + 1
        else: 
            letters[char] = 1
    
    # Only want max one increment of each count per box id
    two_exact = False
    three_exact = False
    for char in letters.keys():
        if letters[char] == 2 and not two_exact:
            two_count += 1
            two_exact = True
        elif letters[char] == 3 and not three_exact: 
            three_count += 1
            three_exact = False
    
print("two letters "+str(two_count)+", three letters "+str(three_count))
print("checksum: "+str(two_count*three_count))
