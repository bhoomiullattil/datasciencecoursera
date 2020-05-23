makeCachematrix <- function() { ## this function is to obtain the matrix as an input from the user
  
  x <- as.integer(readline("Number of rows: "))## to obtain the no.of rows 
  y <- as.integer(readline("Number of cols: "))## to obtain the no.of columns
  prompt <- "enter the experiment numbers (space-separated list) \n"## message that prompts user to enter the values to be inserted in the matrix.
  EXP <- as.integer(strsplit(readline(prompt), " ")[[1]])## to obtain the values of the matrix
  matrixe<-matrix(data = EXP,
                  nrow = x,
                  ncol = y)##create a matrix
}
matrixe<-makeCachematrix()## store the output matrix to matrixe
cachesolve <- function(matrixe) {## function to check whether the inverse value is already cached else to find the inverse 
  m<-NULL
  if(!is.null(m)) {##if the value is already present,its displayed
    return(m)
  }
  solve(matrixe)##function to find inverse
}
m<-cachesolve(matrixe)##assigning the new value to m the inverse matrix can be obtained by viewing the object m

