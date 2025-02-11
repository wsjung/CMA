% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helper.R
\name{pvalues_to_zscores}
\alias{pvalues_to_zscores}
\title{Convert P-values to Z-scores}
\usage{
pvalues_to_zscores(df_pvalues)
}
\arguments{
\item{df_pvalues}{A data frame containing p-values}
}
\value{
A data frame containing Z-scores
}
\description{
This function takes a data frame of p-values and converts them to Z-scores
using the quantile function for the standard normal distribution.
}
\examples{
  df <- data.frame(p1 = c(0.05, 0.01, 0.001), p2 = c(0.1, 0.2, 0.3),
                   markname = c("A", "B", "C"))
  pvalues_to_zscores(df)

}
\seealso{
\code{\link{qnorm}}
}
\author{
Woo Jung
}
\keyword{Z-scores}
\keyword{p-values,}
