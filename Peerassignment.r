## Put comments here that give an overall description of what your## functions do## Write a short comment describing this functionmakeCacheMatrix <- function(x = matrix()) {}## Write a short comment describing this functioncacheSolve <- function(x, ...) {        ## Return a matrix that is the inverse of 'x'} 
 Put comments here that give an overall description of what your
 ## functions do
 ## Write a short comment describing this function
 
 makeCacheMatrix <- function(x = matrix()) {}
 
 ## Write a short comment describing this function
 
 cacheSolve <- function(x, ...) {        
 
 ## Return a matrix that is the inverse of 'x'} 

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) inv <<- solve
        getsolve <- function() inv
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}

cachesolve <- function(x, ...) {
        inv <- x$getsolve()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setsolve(inv)
        inv
}