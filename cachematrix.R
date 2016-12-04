## R Programming Assignment 2 - create two functions below:
## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
## cacheSolve: This function computes the inverse of the special matrix returned by function above or retrieve it from the cache if 
## the inverse has already been calculated.

## Function makeCacheMatrix will store a chache of it's inverse.

makeCacheMatrix <- function(x = matrix()) {
        invMatrix <- NULL       ## initialize invMatrix
        
        set <- function(y) {
                x <<- y
                invMatrix <<- NULL
        }
        
        get <- function() {
                x
        }
        
        
}


## Function cacheSolve will compute the inverse of the matrix returned by makeCacheMatrix or if the inverse has already been 
## calculated (and the matrix has not changed), then the cacheSolve should retrieve the inverse from the cache 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
