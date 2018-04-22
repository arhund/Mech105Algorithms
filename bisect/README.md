## Bisection
## What is Bisect?
Bisect is a root finding method that continually cuts the interval in half, checks to see if there is a sign change (a way to check if the root is inside the interval), and then continues to itterate until the error is low enough.
## Inside the Algorithm
### Inputs
1. func: the function being evaluated
2. xl, xu: the lower and upper bounds of the interval
3. maxit: maximum allowed iterations
### Outputs
1. root:the estimated root by the function
2. fx: the value of the equation at the root
3. ea: the amount of error (relitive)
4. iter: the number of iterations that it took
## Function Limitations
The biggest limitaiton of this function is that the itteration part of the function has some bugs and will not run the proper amount of times.
