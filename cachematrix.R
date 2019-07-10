## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function     

makeCacheMatrix <- function(x = matrix()) { # function which takes matrix as input 
  inverseCheck<- NULL
  
  setMatrix <- function(y){ # this function sets the matrix 
    x <<- y                 # assigning matrix to x which is in different environment
    inverseCheck <<- NULL        #if the matrix is different from that of existing, assign inverse to NULL
  }
  
  
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
f33371de67266e3f8be231b12c60b066b00e55f4