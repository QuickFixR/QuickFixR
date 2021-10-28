# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

#' Test Function For Package
#'
#' @param x The Name Of The Person To Say Hello.
#'
#' @return The output from \code{\link{print}}
#' @export
#'
#' @examples
#' hello("Mahmood Jan")
#' \dontrun{
#' hello("Ziba Jan")
#' }
hello <- function(x) {
  y <- 100;
  y <- y + 100;
  y <- y + 200;

  #Add This Comment From Git Web.

  print(base::paste0("Hello, [",x,"]!"));
}
