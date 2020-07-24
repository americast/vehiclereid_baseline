original_list = open("list/veri_test_list.txt", "r")
new_list = open("list/veri_test_purified.txt", "w")

import os

files = os.listdir("./data/VeRi/image_test/")

i = 0
while True:
	print(i)
	line = original_list.readline().strip()
	if not line: break
	f_name = line.split(" ")[0]
	if f_name.strip() in files:
		new_list.write(line+"\n")
	i += 1

original_list.close()
new_list.close()