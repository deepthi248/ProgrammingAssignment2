## Put comments here that give an overall description of what your
## functions do           

##  makeCacheMatrix takes a matrix as input and can cache its inverse

makeCacheMatrix <- function(x = matrix()) { # function which takes matrix as input 
  inverseValue<- NULL
  
  setMatrix<- function(y){ ## this function sets the matrix 
    x <<- y                 ## assigning matrix to x which is in different environment
    inverseValue <<- NULL        #if the matrix is different from that of existing, assign inverse to NULL
  }
  
  getMatrix <- function()  x ##get function returns the value of the matrix
    
  setMatrixInverse <- function(inverse) inv <<- inverseValue  ## by passing inverse value as argument &setting inverseValue in parent environment
  GetMatrixInverse <- function() inverseValue                     ## gets the value of inv where called
  
  
  list(setMatrix = setMatrix, 
       getMatrix = getMatrix, 
       setMatrixInverse = setMatrixInverse,
       GetMatrixInverse = GetMatrixInverse)                 ## the values are set as list in order to access with input matrix with $ symbol from parent environment
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  inverseValue <- x$GetMatrixInverse()              #here we will set inversevalue to the value from getMatrixInverse function
  if(!is.null(inverseValue)){                       #checking the inverse value if its nullor not
    message("getting cached data")                  #display message
    return(inverseValue)                            #returning the value
  }
   getmatrixvalue <- x$getMatrix()                  #getting the matrix
   inversevalue<- solve(getmatrixvalue,...)         #assigning solve function with matrix as input argument to inversevalue 
   x$setMatrixInverse(inversevalue)                 #setting the inverse value 
   inversevalue
}
