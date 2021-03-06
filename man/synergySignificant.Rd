% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/COMBIA.R
\name{synergySignificant}
\alias{synergySignificant}
\title{Function calculates significant synergy/antagonism}
\usage{
synergySignificant(synergyCalculationLists, noOfRows, noOfCols, xDrug, yDrug,
  cellLine)
}
\arguments{
\item{synergyCalculationLists}{List of synergy antagonism calculations}

\item{noOfRows}{Number of rows}

\item{noOfCols}{Number of columns}

\item{xDrug}{Name of drug on x-axis}

\item{yDrug}{Name of drug on y-axis}

\item{cellLine}{Cell Line}
}
\value{
Processed data
}
\description{
Function calculates significant synergy/antagonism
}
\examples{
dataFile <- system.file("extdata", "rawDataPreProcessed.csv", package="COMBIA")
dataSample <- read.csv(dataFile, header=FALSE)
nR <- 8
nC <- 10
rslt <- applyBliss(nR, nC,  as.matrix(dataSample ), 100) 
synergySignificant(rslt, nR, nC,"A", "B", "Cell")
}
\author{
Muhammad kashif
}
