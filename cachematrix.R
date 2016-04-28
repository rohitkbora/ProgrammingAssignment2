## this function creates the cache values for the given matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {
#variable for storing the inverse of the matrix
        inverseMatrix <- NULL
#To set the value of the matrix to the cache
        set <- function(y) {
                x <<- y
                }
#To retrieve the matrix 
        getMatrix <- function() x
#To store the inverse of the  matrix to the cache		
        setInverseMatrix <- function(imval) inverseMatrix <<- imval
#To retrieve the inverse of the  matrix		
        getInverseMatrix <- function() inverseMatrix
        list(set = set, get = get,
             setInverseMatrix = setInverseMatrix,
             getInverseMatrix = getInverseMatrix)
}


## this function creates the inverse of the given matrix and assigns its value to the inverseMatrix variable of the matrix

cacheSolve <- function(x, ...) {
#To retrieve the cached inverse matrix of the  matrix from the cache		
        inverseMatrix <- x$getInverseMatrix()
#If the inverse matrix has a value it retrieves the cached inverse matrix 
#else first genrates it and then assigns it to the given matrix which subsequently caches it
# and finally returns it.
        if(!is.null(inverseMatrix)) {
                message("getting cached data")
                return(inverseMatrix)
        }
        matric <- x$get()
        inverseMatrix <- solve(matric, ...)
        x$setInverseMatrix(inverseMatrix)
        inverseMatrix
}

