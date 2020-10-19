## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i<-NULL #for iniciating properly
  set<-function( matrix ) {
    m <<- matrix
    i <<- NULL
  }
  #method the get the matrix
  get <- function() {
    m
  }
  setInverse <- function(inverse) {
    i <<- inverse #to set the inverse of the matrix
  }
  #method to get the inverse of the matrix
  getInverse <- function() {
    i
  }
  #Return a list of the methods
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  m <- x$getInverse()
  if( !is.null(m) ) {
    message("getting cached data")
    return(m)
  }
  data <- x$get() #get the matrix from the object
  m <- solve(data) %*% data #calculate the inverse using matrix multiplication
  x$setInverse(m) #set the inverse to the object
  m #return the matrix
}
