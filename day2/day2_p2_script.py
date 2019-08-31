input_file = "day2/day2_input.txt"
boxes = open(input_file, "r",newline='\n')

ids = []

def intersection(str1,str2):
    shared = ''
    for n in range(0,len(str1)):
        if str1[n] == str2[n]:
            shared = shared + str1[n]
    return shared

for line in boxes:
    new_id = line[:-1]
    for id in ids:
        shared = intersection(id, new_id)
        if len(shared) == len(new_id) - 1:
            print(new_id+"    "+id)
    ids.append(new_id)

