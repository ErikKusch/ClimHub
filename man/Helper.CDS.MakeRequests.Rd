% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Helper.CDSFunctionality.r
\name{Helper.CDS.MakeRequests}
\alias{Helper.CDS.MakeRequests}
\title{Form CDS Requests}
\usage{
Helper.CDS.MakeRequests(QueryTimeWindows, QueryParams_ls, Dir = getwd())
}
\arguments{
\item{QueryTimeWindows}{List. List of date ranges created by \code{\link{Helper.CDS.MakeRequestWindows}}.}

\item{QueryParams_ls}{List. Query parameters to be added to request.}

\item{Dir}{Directory pointer. Where to store CDS request outcomes.}
}
\value{
List. Each element holding a list object representing a CDS request.
}
\description{
Loops over time windows of defined size and creates a list of CDS requests.
}
\seealso{
\code{\link{Helper.CDS.MakeRequestWindows}}, \code{\link{Helper.CDS.RegisterAPICredentials}}, \code{\link{Helper.CDS.ExecuteRequests}}.

Make list of CDS Requests
Return list
}
