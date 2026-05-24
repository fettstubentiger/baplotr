\name{ba_stats}
\alias{ba_stats}
\title{Bland-Altman Statistics}
\description{A function to output the main statistical components of a Bland-Altman plot}
\usage{
ba_stats(df, methodA, methodB)
}
\arguments{
\item{df}{A data frame containing the methodA and methodB columns.}
\item{methodA}{A character string of the column within the inputted data frame containing the values obtained using one method.}
\item{methodB}{A character string of the column within the inputted data frame containing the values obtained using another method.}
}
\value{
A string containing the mean bias, standard deviation of differences, and both the upper and lower LoA.
}
\examples{
cat(ba_stats(df = df, methodA = "A", methodB = "B"))
stats <- ba_stats(df, "A", "B")
}
