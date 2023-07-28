
#' Load Noncoding Hotspot Database
#'
#' Loads a tibble  containing describing noncoding hotspots
#'
#' @param verbose verbose? (boolean)
#'
#' @return a tibble  containing describing noncoding hotspots
#' @export
#'
#' @examples
#' load_noncoding_hotspots()
load_noncoding_hotspots <- function(verbose=TRUE){
  db_filepath = system.file("databases/noncoding_hotspots.tsv", package = "regulatorUtils")
  assertthat::assert_that(file.exists(db_filepath))

  noncoding_db = dplyr::as_tibble(utils::read.csv(db_filepath, header = TRUE, sep = "\t", na.strings = ""))
  if (verbose) message("Coordinates are 1-based and use the hg19 (GRCh37) coordinate system")

  return(noncoding_db)
}
