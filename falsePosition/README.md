# False Position
## What is False Position?
False Position is a root finding method that keeps one point stationary while moving the other end of the interval closer and closer to the actual root. This method is usually faster than the bisection method and coninues itterating until the error is below the desired point as most functions do.
## Inside the Algorithm
### Inputs
1. func: function being evaluated
2. xl:lower guess
3. xu: upper guess
4. es: desired error
5. maxiter: desiered  number of iterations
### Outputs
1. root: estimated root
2. fx: function evaluated at root
3. ea: approximate relative error in a percent
4. iter: how many iterations were preformed
## Limitations
Depending on the function that is being evaluated and where it is being evaluated False Position may take a very long time to converge.
