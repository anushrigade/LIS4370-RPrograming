
library("datasets")

head(trees, 5)

means <- function(obj){
  
  UseMethod("mean")
  
}

average.trees <- function(obj){
  setGeneric("average")
  sum(obj)/length(obj)
}

s3 <- list(Girth = 10.2, Height = 68, Volume = 10.5)
s4 <- new("numeric", Girth = 10.2, Height = 68, Volume = 10.5)


