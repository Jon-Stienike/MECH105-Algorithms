# False Position Algorithm

## Summary: 
This function took takes in an equation, an upper and lower guess, a stopping percentage, and the max number of integers and then returns the root, the function evaluated at that point, the relative error, and the number of iterations. The function first checks to see if the upper and lower guess are valid by evaluating the equation at those points and then checking if they are opposite signs. The default number for the stopping error and the maximum number of iterations is .0001 and 200 respectively. The function will then use the false position equation to determine a guess for the root. Then either the upper or lower guess will be replaced depending on if they have the same sign. This will loop through until it reaches the stopping error of the max number of iterations or what the user specified. Then the outputs will be stored when the finction has met those criteria.

## Inputs: 
func - the user inputs a function
xl - the user inputs a lower guess
xu - the user inputs an upper guess
es(optional) - the user inputs a stopping error
maxit(optional) - the user inputs a maximum nember of iterations
## Outputs:
root - the function outputs the calculated appoximate root
fx - the function gives the output of the evaluation of the equation at the approximate root
ea - the function outputs the relative error
iter - the function outputs the number of iterations it completed
