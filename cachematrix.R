## Put comments here that give an overall description of what your
## functions do

## This function takes a matrix, initiates a variable to store inverse of it, m.
## get function gets the data passed to function
## set function assigns the value.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(solve) m <<- solve
  getinv <- function() m
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## In case of an inverse already present, this
## function returns it (m). If it is not present, It 
## calculates the inv of matrix and updates the value of  matrix inverse, m.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve (data, ...)
  x$setinv(m)
  m
  }
