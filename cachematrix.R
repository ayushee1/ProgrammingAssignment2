## This Code does the inverse of matrix using two functions
 
## The first function 'makeCacheMatrix' creates a list that  
## 1.  sets the value of a matrix
## 2.  gets the value of a matrix
## 3.  set the value of the inverse of the matrix
## 4.  get the value of the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) inv <<- inverse
        getInverse <- function() inv
        list(set = set,
             get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## The following function can run on an empty value or on a matrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
        if (!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
 mat <- x$get()
        inv <- solve(mat, ...)
        x$setInverse(inv)
        inv
}
