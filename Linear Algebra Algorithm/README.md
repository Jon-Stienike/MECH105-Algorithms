# Linear Algebra Algorithm

## Summary: 
This function takes in an input of a square matrix and outputs a lower, upper, and permutation matrix. This function starts off by checking if the matrix is square. It then goes through a loop and checks that the biggest number in magnitude is on the top. The function continues to loop through completing LU factorization and putting the largest number on top its respective column. The permutation matrix will be created in order to keep track of all the numbers being moved in the original matrix.


## Inputs: 
### 
A - the user inputs a coefficient matrix
## Outputs:
### 
L - the function outputs the lower matrix that contains the ratios that multiply the rows in order to get rid of the first number
###
U - the function outputs the upper matrix that contains the manipulated matrix
###
P - the function outputs the permutation matrix that tracks which row gets moved
