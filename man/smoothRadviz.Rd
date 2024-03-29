% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/smoothRadviz.R
\name{smoothRadviz}
\alias{smoothRadviz}
\title{A smoothScatter function for Radviz objects}
\usage{
smoothRadviz(
  x,
  main = NULL,
  color = "dodgerblue4",
  nbin = 200,
  label.color = NULL,
  label.size = NULL,
  smooth.color,
  max.dens,
  transformation,
  nrpoints,
  ncols,
  bandwidth
)
}
\arguments{
\item{x}{a radviz object as produced by \code{\link{do.radviz}}}

\item{main}{[Optional] a title to the graph, displayed on top}

\item{color}{the gradient will be generated from \code{white} to \code{color}}

\item{nbin}{the number of equally spaced grid points for the density 
estimation (see \code{\link[ggplot2]{geom_density_2d}} for details)}

\item{label.color}{the color of springs for visualization}

\item{label.size}{the size of the anchors (see \href{https://ggplot2.tidyverse.org/articles/articles/faq-customising.html}{customizing ggplot2} for details on default value)}

\item{smooth.color}{deprecated, see \code{\link[ggplot2]{stat_density2d}} instead}

\item{max.dens}{deprecated, see \code{\link[ggplot2]{stat_density2d}} instead}

\item{transformation}{deprecated, see \code{\link[ggplot2]{stat_density2d}} instead}

\item{nrpoints}{deprecated, see \code{\link[ggplot2]{stat_density2d}} instead}

\item{ncols}{deprecated, see \code{\link[ggplot2]{stat_density2d}} instead}

\item{bandwidth}{deprecated, see \code{\link[ggplot2]{stat_density2d}} instead}
}
\value{
the internal ggplot2 object plus added layers, allowing for extra 
geoms to be added
}
\description{
Plots the Dimensional Anchors and a smoothed color density
representation of projected data points in a 2D space.
}
\examples{
data(iris)
das <- c('Sepal.Length','Sepal.Width','Petal.Length','Petal.Width')
S <- make.S(das)
rv <- do.radviz(iris,S)
smoothRadviz(rv)

}
\author{
Yann Abraham
}
