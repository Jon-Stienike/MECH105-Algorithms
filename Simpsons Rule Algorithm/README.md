# Simpsons 1/3 rule Algorithm

## Summary: 
This function takes in a vector of equally spaced data and a vector of values corresponding to each x. It then outputs an estimate of the integral over those values. It starts off by checking if both of the vectors are the same length and if the x vector is equally spaced. It then checks if there are an odd number of intervals and it will use the trapezoidal rule at the end. If there is an even number of intervals it does the normal Simpson's 1/3 rule. 

## Inputs: 
### 
x - the user inputs a vector of evenly spaced data
###
y - the user inputs a vector of values corresponding to each x value
## Outputs:
### 
I - the function outputs the numerical integral
