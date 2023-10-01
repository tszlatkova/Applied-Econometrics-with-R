## 2 x 3 matrix, containing the elements 1:6, by column

A <- matrix(1:6, nrow = 2) # you can use ncol = 3 for the same result
A

                          #### Basic matrix algebra ####

t(A) # transpose matrix of A

## Dimensions of a matrix

dim(A) 
nrow(A)
ncol(A)

## Element a(ij) of a matrix A is extracted using A[i,j]. Entire rows or columns
## can be extracted via A[i,] and A[,j], respectively, which return the 
## corresponding row or column vectors.

A1 <- A[1:2, c(1,3)] # selects a square matrix containing the first and the third
               # elements from each row

A[, -2] # returns the same matrix as above

det(A1) # compute the deteminant
eigen(A1) # eigenvalues (eigenvectors)

## A1 is a square matrix, and if it is nonsingular it has an inverse. The
## inverse is computed using:

solve(A1)

## Checking if this is indeed the inverse of A1:

A1 %*% solve(A1) # %*% -> the operator for matrix multiplication

## See more about the functions: kronecker() and crossprod()

## R provides other frequently used matrix decompositions, including the
## singular-value decomposition svd(), the QR decomposition qr(), and
## the Cholesky decomposition chol().

                          #### Pattern matrices ####

diag(4) # diagonal matrix

diag(1, 4, 4) # 1 is recycled to the required length 4

diag(A1) # extract the diagonal from an existing matrix

## More general diagonal matrix: 20 x 20 whose first 10 diagonal elements are 
## equal to 1, while the remaining ones are equal to 2.

diag(rep(c(1,2), c(10, 10)))

## See more about the functions: upper.tri() and lower.tri()

                          #### Combining matrices ####

## rbind(), cbind() -> combine matrices by rows or columns

cbind(1, A1) # add a column of ones to our matrix A1

rbind(A1, diag(4, 2)) # combine A1 and diag(4, 2) by rows