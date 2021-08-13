
# This is the command to open the file "um-server-01.txt"
log_file = open("um-server-01.txt")

# This function is looping through the file, stripping off the end of the string. 
# and while its looping during the first part of the string if it find the keyword
# "tue" then it will print that line
def sales_reports(log_file):
    for line in log_file:
        line = line.rstrip()
        day = line[0:3]
        if day == "Mon":
            print(line)

# Calling the function
sales_reports(log_file)
