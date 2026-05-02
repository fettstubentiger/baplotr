\name{ba_stats}
\alias{ba_stats}
\title{Bland-Altman Statistics}
\description{A function to output the main statistical components of a Bland-Altman plot}
\usage{
ba_stats(methodA, methodB)
}
\value{
A string containing the mean bias, standard deviation of differences, and both the upper and lower LoA
}
\examples{
cat(ba_stats(methodA, methodB))
stats <- ba_stats(A, B)
}
