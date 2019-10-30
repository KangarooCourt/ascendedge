#' @title Load Data
#'
#' @description A function to load data from multiple different file types.
#'
#' @param file The path to a file you wish to load. This file can be an xlsx, sav, or csv file.
#'
#' @return A data.frame
#' @export
#'
#' @examples
#' \dontrun{
#' dat <- get_data("testfile.sav")
#' }


get_data <- function(file) {

  substrRight <- function(x, n){
    substr(x, nchar(x)-n+1, nchar(x))
  }


  if(substrRight(file, 4) == ".sav") {dat <- haven::read_sav(file)}
  if(substrRight(file, 4) == "xlsx") {dat <- readxl::read_excel(file)}
  if(substrRight(file, 4) == ".csv") {dat <- readr::read_csv(file)}
  dat
}
