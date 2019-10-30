#' @title Last Letters
#'
#' @description A function to grab the last 'n' letters from string 'x'
#'
#' @param x A character string.
#' @param n A number. This is the number of letters from the end of a string to be displayed.
#'
#' @return The last 'n' characters in string 'x'
#' @export
#'
#' @examples
#' substrRight("Random String", 3)
#'
#'

substrRight <- function(x, n){
  substr(x, nchar(x)-n+1, nchar(x))
}
