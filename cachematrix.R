## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
                 cachematrix <-NULL
                 get<-function() cachematrix
				 set<-function(y) 
				 {cachematrix <<- y }
}
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		  inversematrix <- x$get()
		  if(!is.null(inversematrix)){
		    return inversematrix
		  }
		  y <- solve(x)
		  x$set(y)
		  y	
		
}
