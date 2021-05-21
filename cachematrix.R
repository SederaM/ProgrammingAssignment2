## A pair of functions that cache the inverse of a matrix

## makecachematrix is a function to set and get a matrix, 
## and setInverse and getInverse of that matrix

makeCacheMatrix <- function(x = matrix()) {
          inv <<- NULL
          set <- function(y) {
                    x <<- y
                    inv <<- NULL
          }
          get <- function() {x}
          setInverse <- function(inverse) {inv <<- inverse}
          getInverse <- function() {inv}
          list(set = set, get = get , setInverse = setInverse,
               getInverse = getInverse)
}


## This is used to get the cache the Inverse of a Matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
          inv <- x$getInverse
          if(!is.null(inv)) {
                    message("getting cached data")
                    return(inv)
          }
          mat <- x$get()
          inv <- solve(mat, ...)
          x$setInverse(inv)
          inv
}
