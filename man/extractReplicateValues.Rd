% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/COMBIA.R
\name{extractReplicateValues}
\alias{extractReplicateValues}
\title{This function will takes a list of ranges removes case wells and extract replicate values separately}
\usage{
extractReplicateValues(rawDataUnProcessed, wellRanges, wellplace = 3,
  simple = FALSE, excelFormate = FALSE)
}
\arguments{
\item{rawDataUnProcessed}{A data matrix}

\item{wellRanges}{Ranges of wells}

\item{wellplace}{Place of treated (case) well range}

\item{simple}{TRUE if survival values are already calculated otherwise it is FALSE}

\item{excelFormate}{True if ranges are in excel formate}
}
\value{
Replicate values
}
\description{
This function will takes a list of ranges removes case wells and extract replicate values separately
}
\examples{
dataFile <- system.file("extdata", "testData.csv", package="COMBIA")
rData <- read.csv( dataFile, skip=0, sep=",", nrows=41, 
                    fill=TRUE, header=FALSE,
                    blank.lines.skip = FALSE)[,1:13]
wellR= c( "l3:l10","m3:m10","b3:k10",  "l13:l20","m13:m20","b13:k20", 
            "l23:l30","m23:m30","b23:k30",  "l33:l40","m33:m40","b33:k40")
rslt <-  extractReplicateValues(rData, wellR, excelFormate=TRUE )
}
\author{
Muhammad kashif
}
