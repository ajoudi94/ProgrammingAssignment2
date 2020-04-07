## This Assignment is to calculate the invese of a matrix using a special method.
## This method is used as an efficient alternative

## This function caches the matrix provided(saves its content in the function)
makeCacheMatrix <- function(x = matrix()) {

        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) i <<- solve
        getinverse <- function() i
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


##Calculates the inverse of the inputed matrix makecachematrix is the argument

cacheSolve <- function(x, ...) {
        
        
        i <- x$getinverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        
        i
        ## Return a matrix that is the inverse of 'x'
} 



