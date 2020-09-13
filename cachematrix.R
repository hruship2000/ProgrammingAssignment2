## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##makeCacheMatrix consists of set,get,setInverse,getInverse
makeCacheMatrix <- function(x = matrix()) {
  
  inv<- NULL      ##initialization
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() {x}   ##get matrix x
  setInverse <- function(inverse) {inv <<- inverse}
  getInverse <- function() {inv}  ##to inverse the matrix
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
  
}


## Write a short comment describing this function

##function to get cache data
cacheSolve <- function(x, ...) {
  inv <- x$getInverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(data, ...) ##inverse of matrix function
  x$setInverse(m)
  
  
  inv   ## Return a matrix that is the inverse of 'x'
}
