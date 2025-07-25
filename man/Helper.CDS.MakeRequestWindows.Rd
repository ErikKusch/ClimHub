% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Helper.CDSFunctionality.r
\name{Helper.CDS.MakeRequestWindows}
\alias{Helper.CDS.MakeRequestWindows}
\title{Creating time windows for CDS queries}
\usage{
Helper.CDS.MakeRequestWindows(Allowed_seq, Queried_seq, TChunkSize)
}
\arguments{
\item{Allowed_seq}{Sequence supported by queried data set}

\item{Queried_seq}{Sequence queried by user}

\item{TChunkSize}{Numeric. Maximum amount of layers to include in each query}
}
\value{
List. A list of dates for individual CDS queries as used by \code{\link{Helper.CDS.MakeRequest}}.
}
\description{
Make a list holding date ranges for which to make individual CDS queries
}
