#' Read file
#'
#' @param fpath file.path
#'
#' @importFrom utils read.table
#' @export
#'
ch1001 <- function(fpath = file.path(system.file(package = "fortranio"), "extdata", "ch1001.txt")){
  bindir <- system.file("bin", package = "fortranio")
  postfix <- if(is_windows()) .Machine$sizeof.pointer * 8
  path <- file.path(bindir, paste0("ch1001", postfix))

  if(!file.exists(fpath)){
    stop("file does not exist!")
  }

  res <- read.table(textConnection(system2(path, args = fpath, stdout = TRUE)))
  res
}

is_windows <- function(){
  identical(.Platform$OS.type, "windows")
}
