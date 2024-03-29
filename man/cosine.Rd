% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cosine.R
\name{cosine}
\alias{cosine}
\title{Compute the Cosine Similarity between the Columns of a Data Set}
\usage{
cosine(mat)
}
\arguments{
\item{mat}{A matrix or data.frame}
}
\value{
A symmetrical matrix with as many rows as there are columns in input
}
\description{
Given a dataset, compute the cosine similarity between to columns for use
in optimization of Dimensional Anchors
}
\details{
implementation by \href{https://stackoverflow.com/users/4288660/ekstroem}{ekstroem}
           (see \href{https://stackoverflow.com/a/45382926}{StackOverflow} for details)
}
\examples{
data(iris)
das <- c('Sepal.Length','Sepal.Width','Petal.Length','Petal.Width')
mat <- iris[,das]
sim.mat <- cosine(mat)
ncol(mat)
dim(sim.mat)

}
\author{
Yann Abraham

David Ruau
}
