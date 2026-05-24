\name{plot_ba}
\alias{plot_ba}
\title{Plot Bland-Altman}
\description{A function that plots a Bland-Altman plot}
\usage{
plot_ba(data, methodA, methodB, labstitle, labsx, labsy)
}
\arguments{
\item{df}{A data frame containing the methodA and methodB columns.}
\item{methodA}{A character string of the column within the inputted data frame containing the values obtained using one method.}
\item{methodB}{A character string of the column within the inputted data frame containing the values obtained using another method.}
\item{labstitle}{A character string that would be used as the title for the Bland-Altman plot.}
\item{labsx}{A character string that would be used as the X-axis label for the Bland-Altman plot.}
\item{labsy}{A character string that would be used as the Y-axis label for the Bland-Altman plot.}
}
\value{
A Bland-Altman ggplot
}
\examples{
plot_ba(df = df, methodA = "A", methodB = "B", labstitle = "Title", labsx = "X-axis", labsy = "Y-axis")
p <- plot_ba(df, "A", "B", "Title", "X-axis", "Y-axis")
}