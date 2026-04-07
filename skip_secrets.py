import sys
import os

if len(sys.argv) != 2 :
    sys.exit(1)

file_name = sys.argv[1]

if not os.acess(file_name, os.R_OK):
    sys.exit(1)

with open(file_name, 'r') as f_in:
    lines = f_in.readlines()

with open('out.txt', 'w') as f_out:
    for line in lines:
        if 'pineapple' not in line:
            f_out.write(line)

