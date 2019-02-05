# These functions will get a square matrix and cache it in makeCacheMatrix, then get it and calculate the inverseinverse.gaussian()

## This function will get a matrix,inverse it  and set it (cache it).  

makeCacheMatrix <- function(x = matrix()) {
      makeCacheMatrix <- function(x = matrix()) {
            m <- NULL
            set <- function(y) {
                  x <<- y
                  m <<- NULL
            }
            get <- function() x
            setinverse <- function(inverse) m <<- inverse
            getinverse <- function() m
            list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
      }
}


## this function will calculate the inverse of a matrix, however if it found it already calculated and in the enviroment it will get the value from the cache

cacheSolve <- function(x, ...) {
      cacheSolve <- function(x, ...) {
            m <- x$getinverse()
            if(!is.null(m)) {
                  message("getting cached data")
                  return(m)
            }
            data <-  x$get()
            m <- solve(data)
            x$setinverse(m)
            m
      }
}
