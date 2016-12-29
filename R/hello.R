#' hello
#'
#' @export
hello <- function() {
  gettext("Hello, world!")
}

#' hello2
#'
#' @export
hello2 <- function() {
  gettext("Hello, world!", domain = "R-gettext")
}

#' app
#'
#' @import shiny
#' @export
app <- function() {
  app_dir <- system.file("app", package = "gettext")

  shiny::runApp(app_dir, display.mode = "normal")
}
