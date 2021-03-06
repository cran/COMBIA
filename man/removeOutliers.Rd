% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/COMBIA.R
\name{removeOutliers}
\alias{removeOutliers}
\title{This function  Remove Outliers}
\usage{
removeOutliers(arrangeReplicates, minThersholdForCVCal, minThersholdForCV)
}
\arguments{
\item{arrangeReplicates}{A data matrix}

\item{minThersholdForCVCal}{Threshold for value removal in CV}

\item{minThersholdForCV}{Values to be excluded}
}
\value{
Replicate values
}
\description{
This function  Remove Outliers
}
\examples{
dataFile <- system.file("extdata", "rawDataPreProcessed.csv", package="COMBIA")
dataSample <- read.csv(dataFile, header=FALSE )
minThersholdForCV <- 0.3
minThersholdForCVCal <- 0.1
removeOutliers( as.matrix(dataSample ), minThersholdForCV,
       minThersholdForCVCal) 
}
\author{
Muhammad kashif
}
