> ##this function creates a special "matrix" object that can cache its inverse
> makeCacheMatrix <- function(x = matrix()) {
+ inv <- NULL  ##initializing inverse as null
+ set <- function (y){      
+x <<- y
+ inv <<- NULL
+ }
+ get<- function ()x ##function to get matrix x
+ setinv<- function (inverse) inv<<- inverse
+ getinv<- function()inv
+ list(set = set , get=get , setinverse = setinverse , getinverse = getinverse)
+ }
>
>##this function computes the inverse of the special " matrix" created by makeCacheMatrix
>##if the inverse has already been calculated ( and the matrix has not changes) ,
>##then it should retrieve inverse from the cache
> cacheSolve <- function (x,...){  ## return a matrix that is the inverse of x 
+ inv<- x$getinverse()
+ if(lis.null(inv)){       
+ message("getting cached data")
+ return(inv)
+}
+ data<- x$get()
+ inv<-solve(data,...)
+ x$setinverse(inv)
+ inv
+}
