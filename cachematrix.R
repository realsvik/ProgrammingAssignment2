## Two below functions are able to create a "matrix" object
## and return its inverse
##If inverse has been already calculated, it is returned from cache

#makeCacheMatrix: 
#Creates a "matrix" object of list type
#sets not-calculated yet inverse to NULL
#func. set () sets the value of the "matrix"
#func. get () returns the value of the "matrix", sets inverse to NULL
#func. setcacheinv() caches the inverse of "matrix" into inv variable
#func getinv() returns the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
        
        inv <- NULL
        set <- function(y){
                x <<- y
                inv <<- NULL
        }
        get <- function(){
                x
        }
        setcacheinv <- function(invval=NULL) inv <<- invval
        getinv <- function () inv
        list(set = set, get = get, setcacheinv = setcacheinv, getinv = getinv)
}


##cacheSolve: 
##Computes the inverse of "matrix", returned by makeCacheMatrix
##Retrieves inverse from cache, if inverse already calculated and matrix has not changed

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
        #if inverse has been calculated and cached, return cached value
        if(!is.null(x$getinv())) {
                message("getting cached data")
                return(invd)
        }
        #if no chached inverse, calculate and return inverse
        invd <- solve(x$get(), ...)
        invd
}
