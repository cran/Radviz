% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/make.S.R
\name{make.S}
\alias{make.S}
\title{Define Dimensional Anchors around the Unit Circle}
\usage{
make.S(x)
}
\arguments{
\item{x}{a vector of dimensional anchors, or a list of dimensional anchors for Class Discrimination Layout, 
or the number of anchors to put on the circle}
}
\value{
A matrix with 2 columns (x and y coordinates of dimensional anchors) and 1 line
         per dimensional anchor (so called springs). If x is a vector, the row names of
         the matrix will be set to the syntactically correct version of values in the vector
         (through a call to \code{\link[base]{make.names}}). Please note that some functions
         expect to match column names of data to row names of the spring matrix.
}
\description{
make.S will return [x,y] coordinates for n dimensional anchors equally spaced around the unit circle
}
\details{
If x is a vector or a list, values will be used to set the row names of the matrix.
}
\examples{
data(iris)
das <- c('Sepal.Length','Sepal.Width','Petal.Length','Petal.Width')
make.S(length(das)) # without row names
make.S(das) # with row names
make.S(list(c('Sepal.Length','Sepal.Width'),c('Petal.Length','Petal.Width')))

}
\author{
Yann Abraham
}
