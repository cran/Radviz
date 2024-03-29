% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/do.optimFreeviz.R
\name{do.optimFreeviz}
\alias{do.optimFreeviz}
\title{Optimize the Dimensional Anchors Position using the Freeviz algorithm}
\usage{
do.optimFreeviz(
  x,
  classes,
  attractG = 1,
  repelG = 1,
  law = 0,
  steps = 10,
  springs = NULL,
  multilevel = FALSE,
  nClusters = 5000,
  minTreeLevels = 3,
  subsetting = FALSE,
  minSamples = 1000,
  print = TRUE
)
}
\arguments{
\item{x}{Dataframe or matrix, with observations as rows and attributes as columns}

\item{classes}{Vector with class labels of the observations}

\item{attractG}{Number specifying the weight of the attractive forces}

\item{repelG}{Number specifying the weight of the repulsive forces}

\item{law}{Integer, specifying how forces change with distance: 0 = (inverse) linear, 1 = (inverse) square}

\item{steps}{Number of iterations of the algorithm before re-considering convergence criterion}

\item{springs}{Numeric matrix with initial anchor coordinates. When \code{NULL} (=default), springs are initialized by \code{\link{make.S}}}

\item{multilevel}{Logical, indicating whether multi-level computation should be used. Setting it to TRUE can speed up computations}

\item{nClusters}{Number of clusters to be used at coarsest level of hierarchical tree (only used when \code{multilevel} is set to TRUE)}

\item{minTreeLevels}{Minimum number of clustering levels to consider (only used when \code{multilevel} is set to TRUE). This parameter might over-rule \code{nClusters} .}

\item{subsetting}{Logical, indicating whether a subsetting procedure should be used to compute the springs. The subset size is iteratively increased until the springs 
are found to be close enough to their true values, based on a confidence interval. For large datasets this option can considerably speed up computations.}

\item{minSamples}{Minimum number of samples to be considered for subsetting (only used when \code{subsetting} is set to TRUE)}

\item{print}{Logical, indicating whether information on the iterative procedure should be printed in the R console}
}
\value{
A matrix with 2 columns (x and y coordinates of dimensional anchors) and 1 line
         per dimensional anchor (so called springs).
}
\description{
Allows to compute the best arrangement of Dimensional Anchors so that
visualization efficiency (i.e. separation between classes) is maximized.
The Freeviz algorithm is implemented in C++ for optimal computational efficiency.
}
\details{
Freeviz is an optimization method that finds the linear projection that
best separates instances of different classes, based on a physical metaphor. Observations are considered as physical particles,
that exert forces onto each other. Attractive forces occur between observations of the same class, and repulsive forces between
observations of different classes, with the force strength depending on the distance between observations. The goal of Freeviz
is to find the projection with minimal potential energy. For more details, see the original Freeviz paper: \doi{10.1016/j.jbi.2007.03.010}
}
\examples{
data(iris)
das <- c('Sepal.Length','Sepal.Width','Petal.Length','Petal.Width')
S <- make.S(das)
rv <- do.radviz(iris,S)
plot(rv,anchors.only=FALSE)
new.S <- do.optimFreeviz(x = iris[,das], classes = iris$Species)
new.rv <- do.radviz(iris,new.S)
plot(new.rv,anchors.only=FALSE)

}
\author{
Nicolas Sauwen
}
