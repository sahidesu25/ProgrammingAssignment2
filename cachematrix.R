
## This function takes the matrix as the input and creates an input as list 
## with fillowing dunctions
## set-used to set the matrix
##get=used to get the matrix
##setinverse=used to set the inverse of the matrix
##getinverse=used to get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(a) {
    x <<- a
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


### Return a matrix that is the inverse of 'x'
### This functions first checks wether the inverse has been already computed or not
##if it is computed it gets the inverse from the cache without recomputing it, otherwise 
##it computes it. The First call to the cachesolve always computes the matrix
}
cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting data from cache.")
    return(inv)
  }
  message("computing the inverse of the matrix.")
  matrix <- x$get()
  inv <- solve(matrix)
  x$setinverse(inv)
  inv
}
