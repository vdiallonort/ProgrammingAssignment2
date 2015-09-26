## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# This function create a special matrix with couple function set (set the data), get (get the data) set inverse ( set the inverse of the matrix) getInverse (get the inverse of the matrix)
makeCacheMatrix <- function(x = matrix()) {
m<- NULL
# set the matrix
set<-function(y){
  x<<-y
  m<<-NULL
}

# get the matrix
get <-function() x
# set the matrix inverse
setInverse<-function(inverse) m<<-inverse
#get the matrix inverse
getInverse<-function() m
list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
}




## Write a short comment describing this function

# calculate the Inverse if this one is not already calculate and cached if already cache retrieve the cached part
cacheSolve <- function(x, ...) {
    m<-x$getInverse()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    data<-x$get()
	# Generte the inverse of the function
    m<-solve(data,...)
    x$setIn(m)
    m
        ## Return a matrix that is the inverse of 'x'
}
