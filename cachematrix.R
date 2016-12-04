## R Programming Assignment 2 - create two functions below:
## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
## cacheSolve: This function computes the inverse of the special "matrix" returned by function above or retrieve it from the cache if 
## the inverse has already been calculated.

## Function makeCacheMatrix 

makeCacheMatrix <- function(x = matrix()) {
        invMatrix <- NULL       ## initialize invMatrix
        
        ## set the matrix
        set <- function(y) {
                x <<- y
                invMatrix <<- NULL
        }
        
        ## get the matrix
        get <- function() {
                x
        }
        
        ## set the inverse of the matrix
        setInverse <- function(solve) {
                invMatrix <<- solve
        }
        
        ## get the inverse of the matrix
        getInverse <- function() {
                invMatrix
        }
        
        list(set = set, 
             get = get,
             setInverse = setInverse,
             getInverse = getInverse)
        
}

## Function cacheSolve will compute the inverse of the matrix returned by makeCacheMatrix or if the inverse has already been 
## calculated (and the matrix has not changed), then the cacheSolve should retrieve the inverse from the cache 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        invMatrix <- x$getInverse()
        
        ## Checks if there is cached data
        if (!is.null(invMatrix)) {
                message("retrieving cached data")
                return(invMatrix)
        }
        
        ## Return the inverse
        mat <- x$get()
        invMatrix <- solve(mat, ...)
        x$setInverse(invMatrix)
        invMatrix
}
