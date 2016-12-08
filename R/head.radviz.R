#' Radviz Object Summary, head, Print, Subset Methods
#' 
#' Provides helper function to deal with Radviz objects
#' 
#' @param x an object of class Radviz, as returned by \code{\link{do.radviz}}
#' @param n the number of lines from each slots in the Radviz object to display (defaults to 6)
#' @param ...	further arguments to be passed to or from other methods
#' 
#' @details \code{head.radviz} shows the first \code{n} lines of the radviz \code{data} object.
#' 
#' @examples
#' data(iris)
#' das <- c('Sepal.Length','Sepal.Width','Petal.Length','Petal.Width')
#' S <- make.S(das)
#' rv <- do.radviz(iris,S)
#' 
#' head(rv)
#' 
#' @author Yann Abraham
#' @importFrom utils head
#' @export
head.radviz <- function(x,n=6,...) {
	print(head(x$data,n=n))
}
