## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
