## There are 2 functions used. 1 function to cache the inverse of matrix and other
## function to compute the inverse of special matrix

## This function is used to cache the inverse of a special matrix

makeCacheMatrix <- function(x = matrix()) {
  matx <- NULL
  set <- function(y){
    x <<- y
    matx <<- NULL
  }
  get <- function() x
  setmatrix <- function(inverse) matx <<- inverse
  getmatrix <- function() matx
  list(set = set, get= get, setmatrix = setmatrix, getmatrix = getmatrix)
}


## This function is used to compute the inverse of special matrix

cacheSolve <- function(x, ...) {
  matx <- x$getmatrix()
  if(!is.null(matx)){
    message("Getting Cached Data")
    return(matx)
  }
  data <- x$get()
  matx <- solve(data,...)
  x$setmatrix(matx)
  matx
}