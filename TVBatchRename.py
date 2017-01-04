import glob, os

series = input("What is the title of the series? ")
season = input("What season number? ")
start = int(input("What episode number do you want to start with? "))
extension = input("What is the file extension (minus the . ) ")
episode = 'e'

for filename in os.listdir("."):
	if start < 10:
		episode = 'e0'
	else:
		episode = 'e'
		
	new_name = series + ' s' + season + episode + str(start) + '.' + extension
	print(filename)
	os.rename(filename, new_name)
	start += 1
	