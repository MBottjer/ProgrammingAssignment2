## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# As a general overview, makeCacheMatrix is a function with a subset of functions. These functions are set, get,
# setinverse and getinverse.

# The function begins by initialising the variable inverse_of_matrix, which is initially set to NULL.

# The first function, 'set', sets the value of the matrix when a value is passed to the following: 
# makeCachMatrix$set(valuePassedhere). This overides the currently stored value of x in 
# makeCacheMatrix, hence the use of <<-, and resets the previously calculated inverse to NULL.

# 'get' simply returns the currently value of x.

# 'setinverse' merely takes a parameter and assigns the variable 'inverse_of_matrix' to that value.

# 'get_inverse' returns the current inverse of the stored matrix of inverse_of_matrix

# at the end fo the function we return a list of functions so that we have access to them

makeCacheMatrix <- function(x = matrix()) {

  inverse_of_matrix <- NULL

  set <- function(y) {
    x <<- y
    inverse_of_matrix <<- NULL
  }

  get <- function() x
  setinverse <- function(inverse) inverse_of_matrix <<- inverse
  getinverse <- function() inverse_of_matrix
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}


## Write a short comment describing this function

# cacheSolve takes on the makeCacheMatrix object and utilises functions in makeCacheMatric function, to either
# calculate the inverse of the matrix or return the cached result.

# first the method checks whether the questioned result already exists. In the case it does, it
# returns this value immediately (this is captured in the if statement).

# In the case that the inverse does not already exist, as determined from the inputted object x, then the inverse of the
# matrix is calculated and the result stored via x$setinverse(inverse_of_matrix)

cacheSolve <- function(x, ...) {

  inverse_of_matrix <- x$getinverse()

  if(!is.null(inverse_of_matrix)){
    message("getting cached data")
    return(inverse_of_matrix)
  }

  data <- x$get()
  inverse_of_matrix <- solve(data, ...)
  x$setinverse(inverse_of_matrix)
  return(inverse_of_matrix)
}