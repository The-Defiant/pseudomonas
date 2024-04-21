#' @export
parse_file <- function(file) {
  filelines <- readLines(file)
  return(filelines)
}

