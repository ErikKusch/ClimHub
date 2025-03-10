### LOADING MULTIPLE FILES FROM DRIVE AND MAKE SPATRASTER ========================================================
#' Load list of NetCDF files and stack them into a SpatRaster
#'
#' Iterates of a number of filenames, pointing to NetCDFs, and loads them into one SpatRaster.
#'
#' @param FNames Character. Vector of absolute filenames to be loaded.
#' @param TimeAssign POSIXct. Optional vector of times to apply to list-loaded data
#'
#' @importFrom progress progress_bar
#' @importFrom terra rast
#' @importFrom terra time
#' @importFrom terra nlyr
#'
#' @return A spatraster object.
#'
Helper.LoadFiles <- function(FNames, TimeAssign = NULL) {
    ## make progress bar
    pb <- progress_bar$new(
        format = "Loading from disk (:current/:total) | [:bar] Elapsed: :elapsed | Remaining: :eta",
        total = length(FNames), # 100
        width = getOption("width"),
        clear = FALSE
    )
    progressIter <- 1:length(FNames) # token reported in progress bar

    ## loading data
    MetNo_rast <- as.list(rep(NA, length(FNames)))
    for (LoadIter in 1:length(FNames)) {
        MetNo_rast[[LoadIter]] <- terra::rast(file.path(FNames[LoadIter]))
        if (!is.null(TimeAssign)) {
            terra::time(MetNo_rast[[LoadIter]]) <- rep(TimeAssign[LoadIter], terra::nlyr(MetNo_rast[[LoadIter]]))
        }
        pb$tick(tokens = list(layer = progressIter[LoadIter]))
    }

    ## retunring data
    MetNo_rast <- do.call(c, MetNo_rast)
    return(MetNo_rast)
}
