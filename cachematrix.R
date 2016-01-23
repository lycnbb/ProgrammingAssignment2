## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# The first function, make creatCacheMatrix creates a special "vector", which is really a list containing a function to
# 1.set the value of the Matrix
# 2.get the value of the Matrix
# 3.set the value of the inverse of the Matrix
# 4.get the value of the inverse of the Matrix

makeCacheMatrix <- function(x = matrix()) {
    I <- NULL
    set <- function(y) {
      x <<- y
      I <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) I <<-inverse
    getinverse
    <- function() I
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
  }
  


## Write a short comment describing this function
# first checks to see if the mean has already been calculated. If so, 
# it  get s the mean from the cache and skips the computation. 
# Otherwise, it calculates the mean of the data and sets the value of 
# the mean in the cache via the  setmean  function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  I <- x$getinverse()
  if(!is.null(I)) {
    message("getting cached data")
    return(I)
  }
  data <- x$get()
  I <- solve(data, ...)
  x$setinverse(I)
  I
  
  
  
}
