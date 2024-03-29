% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.radviz.R
\name{plot.radviz}
\alias{plot.radviz}
\title{A Plotting Function for the Radviz Object}
\usage{
\method{plot}{radviz}(
  x,
  main = NULL,
  anchors.only = TRUE,
  anchors.filter = NULL,
  label.color = NULL,
  label.size = NULL,
  point.color,
  point.shape,
  point.size,
  add,
  ...
)
}
\arguments{
\item{x}{a radviz object as produced by \code{\link{do.radviz}}}

\item{main}{[Optional] a title to the graph, displayed on top}

\item{anchors.only}{by default only plot the anchors so that other methods can easily be chained}

\item{anchors.filter}{filter out anchors with low contributions to the projection (superseded)}

\item{label.color}{the color of springs for visualization}

\item{label.size}{the size of the anchors (see \href{https://ggplot2.tidyverse.org/articles/articles/faq-customising.html}{customizing ggplot2} for details on default value)}

\item{point.color}{deprecated, use \code{\link[ggplot2]{geom_point}} instead}

\item{point.shape}{deprecated, use \code{\link[ggplot2]{geom_point}} instead}

\item{point.size}{deprecated, use \code{\link[ggplot2]{geom_point}} instead}

\item{add}{deprecated, use \code{\link[ggplot2]{geom_point}} instead}

\item{...}{further arguments to be passed to or from other methods (not implemented)}
}
\value{
the internal ggplot2 object, allowing for extra geoms to be added
}
\description{
Plots the Dimensional Anchors and projected data points in a 2D space.
}
\details{
by default the plot function only shows the anchors. Extra geoms are 
required to display the data.
When \code{anchors.filter} is a number and type is not Radviz, any springs 
whose length is lower than this number will be filtered out 
of the visualization. This has no effect on the projection itself. Please note
that this parameter is being superseded by the \code{\link{anchor.filter}} 
function.
}
\examples{
data(iris)
das <- c('Sepal.Length','Sepal.Width','Petal.Length','Petal.Width')
S <- make.S(das)
rv <- do.radviz(iris,S)
plot(rv)
plot(rv,anchors.only=FALSE)

library(ggplot2)
## should look the same as before
plot(rv)+geom_point()
plot(rv)+geom_point(aes(color=Species))

}
\author{
Yann Abraham
}
