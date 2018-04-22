# LU Factorization
## What is LU Factorization?
LU Factorization decomposes a square matrix into its lower and upper triangular matrix and a permutation matrix. The matrices are obtained by Gauss elimination and all of the values are recorded in their specific matrix. LU can also be used to find the inverse of the main matrix.
## Inside the Algorithm
### Inputs
1. A: A is just the main matrix (the coefficient matrix) that is being considered 
### Outputs
1. L: L is the lower triangular matrix that contains all of the values used in the Gauss elimination.
2. U: U is the upper triangular matrix that contains all of the changed "A" values that Gauss elim. changed.
3. P: P is the permutaion matrix that keep track of the pivoting done by Gauss elim.
## Limitations of LU
The biggest limitation of LU is that the values of the L and U matrix start diverging from the actual values the larger the matrix gets. For most accurate data use a 3x3 matrix.
