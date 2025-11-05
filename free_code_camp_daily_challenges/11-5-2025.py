

# "Matrix Builder
# Given two integers (a number of rows and a number of columns), return a matrix (an array of arrays) filled with zeros (0) of the given size.

# For example, given 2 and 3, return:

# [
#   [0, 0, 0],
#   [0, 0, 0]
# ]

# without using numpy
def build_matrix(rows, cols):
    
    mat = []
    
    for i in range(rows):
         row = []
         for j in range(cols):
             row.append(0)
         mat.append(row)
        

    return mat

** end of main.py **
