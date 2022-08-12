## a square invertible matrix
## a list containing functions to
##1. set the matrix
##2. get the matrix
##3. set the inverse
##4. get the inverse

## great function

makeCacheMatrix <- function(x = matrix()) {
      inv = NULL
      set <- function(y) {
            x <<- y
            inv <<- NULL
}
get = function() x
        setinv <- function(inverse)inv <<- inverse
        getinv <- function()inv
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)

}


## output of the makeCacheMatrix()

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv = x$getinv()
        ## if the inverse has already been calculated
        if(!is.null(inv)){
                message("getting cached data")
                return(inv)
}
        ## calculates the invrse
        reserved.data = x$get()
        inv = solve(reserve.data,...)
        
        x$setinv(inv)
        
        return(inv)
}
