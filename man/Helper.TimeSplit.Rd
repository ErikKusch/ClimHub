% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Helper.TimeSplit.r
\name{Helper.TimeSplit}
\alias{Helper.TimeSplit}
\title{Split raster layers by time component}
\usage{
Helper.TimeSplit(Raster, TimeSplit)
}
\arguments{
\item{Raster}{A SpatRaster with a time dimension/component.}

\item{TimeSplit}{Character. Indicating by which division of the time component to split. Supported values are c("Year", "Season", "Month", "YearMonth")}
}
\value{
A list of SpatRasters.
}
\description{
Creates a list object containing layers of input SpatRaster object according to time component and user-defined split.
}
\examples{
Data_rast <- terra::rast(system.file("extdata", "KiN_AT.nc", package = "ClimHub"))[[1:360]]
Helper.TimeSplit(Raster = Data_rast, TimeSplit = "Year")
Helper.TimeSplit(Raster = Data_rast, TimeSplit = "Season")
Helper.TimeSplit(Raster = Data_rast, TimeSplit = "Month")
Helper.TimeSplit(Raster = Data_rast, TimeSplit = "YearMonth")

}
