#' @export
parse_file <- function(file) {
  filelines <- readLines(file)
  return(filelines)
}


BASE_PACKAGES <- function() {
  return(
    c("stats", "graphics", "grDevices", "utils", "datasets", "methods", "base")
  )
}

#' @export
pseudo <- function(lines) {
  # Get all loaded packages
  # pkgs <- find.package()
  # pkg_names <- sapply(pkgs, basename)
  loaded_packages <- loadedNamespaces()
  # List packages apart from base
  base_packages <- BASE_PACKAGES()
  pkg_names <- pkg_names[! pkg_names %in% base_packages]
  if(length(pkg_names) < 1) {
    stop("Did not find any packages")
  }
}