## Put comments here that give an overall description of what your
## functions do
The following two functions are used to calculate the inverse of a matrix, if the matrix
has been cached before, the inverse of a matrix will be returned right now rather than compute it repeatedly

## Write a short comment describing this function
The following function makeCacheMatrix creates a special “matrix”, which is really a list containing a function to
set the value of a matrix
get a value of a matrix
set the inverse of the matrix
get the inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
m <- NULL
set <- function(y)
m <<- NULL
}
get <- function() x
setinverse <- function(inverse) m <<- inverse
getinverse <- function() m
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}
The following function cacheSolve calculates the inverse of the special “matrix” created with the above function 
it first checks to see if the inverse of the matrix has already been calculated.
If so, it gets the inverse from the cache and skips the computation. Otherwise, it calculates the inverse of the 
data and sets the inverse matrix in the cache via the setinverse function.

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
if(!is.null(m)) {
message("getting cached data")
return(m)
}
data <- x$get()
m <- solve(data, ...)
x$setinverse(m)
m
}
