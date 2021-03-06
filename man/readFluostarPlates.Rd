% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/COMBIA.R
\name{readFluostarPlates}
\alias{readFluostarPlates}
\title{Read a file and process it to calculate the Survival indeces(S.I).
This function calls other functions to complete its task. It reads a file to separate and regenerate the missing platekeys. 
Checks are performed to keep regenerated missing keyvalues in sync with data. It calculates survival indeces of the provided 
control wells, where wells should always be in triplet form that is  control well range, empty well range and case well range.
It can also handle the double plate experiments in which one plate is read twice and only one of them is selected in S.I calculations. 
Secondly it can also read the data from the file where a plate is read only one time, still it cope with variations if an experiment is
repeated twice or many time in adjacent rows in the file.}
\usage{
readFluostarPlates(filename, separator = ",", noofrows_skip = 0,
  sheet = "1", readplates = 1, platetype, doubleplateexperiment = TRUE,
  keyposition, selectionkey, platekey, rowsperexperiment = 1, wells)
}
\arguments{
\item{filename}{value of this argument should be path and filename.ext e=g "e:/optima.txt".}

\item{separator}{is the sepration character within the file assigned to filename.}

\item{noofrows_skip}{Number of the rows in the file that should be skipped before starting the data reading.}

\item{sheet}{Need to use only when reading excel files. It is the number of the excel sheet to be read in a worksheet.}

\item{readplates}{Number of the plates to read from a set of plates from an excel file, This feature is only workable with xls files.}

\item{platetype}{Two types of plate formates are supported 384 and 96 wells.}

\item{doubleplateexperiment}{This parameter can have TRUE & FALSE values only. It is set to TRUE when an experiment is read twice.}

\item{keyposition}{It is the position of key in the header. Currently it is located at the second position
but it can be at any position in the header.}

\item{selectionkey}{value, that will be used during the selection of plate. Current value is 65000.}

\item{platekey}{barcode of the plate whose wells you want to measure for Survival index}

\item{rowsperexperiment}{It is the argument that specifies if the same experiment is repeated and how many times in a plate. If an experiment is 
repeated twice in adjacent rows then average of its values will be used in the SI calculation.}

\item{wells}{This argument can take a list of arguments in the triplet form. Where first argument of triplet is the range of control wells,
second argument is the range of empty wells while third one is the range of case wells. It is made so that in labs plates layouts can differ  
greatly. By using this  triplet scheme one can handel a number of palte layouts. Values should be given in the according to plate range e-g a4:d5   
means start from the  a(1) row and first column and continue to d(4) row 5th column.}
}
\value{
Matrix of S.I.
}
\description{
Read a file and process it to calculate the Survival indeces(S.I).
This function calls other functions to complete its task. It reads a file to separate and regenerate the missing platekeys. 
Checks are performed to keep regenerated missing keyvalues in sync with data. It calculates survival indeces of the provided 
control wells, where wells should always be in triplet form that is  control well range, empty well range and case well range.
It can also handle the double plate experiments in which one plate is read twice and only one of them is selected in S.I calculations. 
Secondly it can also read the data from the file where a plate is read only one time, still it cope with variations if an experiment is
repeated twice or many time in adjacent rows in the file.
}
\examples{
f <- system.file("extdata", "optima.log", package = "COMBIA")
platematrix <- readFluostarPlates(filename = f, platetype = "384", 
                                   keyposition=2, separator= "\\t",     
                                   selectionkey = "65000", platekey = 7051,
wells = c( "c8:h8","c1:n1","c3:c7",    "c8:h8","c1:n1","c9:c11", 
           "c8:h8","c1:n1","e3:e7",     "c8:h8","c1:n1","e9:e11",
           "c8:h8","c1:n1","g3:g7",     "c8:h8","c1:n1","g9:g11" )
                                 )
}
\author{
Muhammad Kashif
}
