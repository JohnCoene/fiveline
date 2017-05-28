#' Insert limerick in RMarkdown
#'
#' @param limerick A limerick as returned by \code{\link{get_lim}}
#' @param title whether to include title
#'
#' @examples
#' \dontrun{
#' lim <- get_lim(id = 1)
#' insert_lim(lim)
#' }
#'
#' @seealso \code{\link{get_lim}}
#'
#' @export
insert_lim <- function(limerick, title = TRUE){
  if(missing(limerick)) stop("must pass limerick", call. = FALSE)

  htmltools::div(
    if(title == TRUE) htmltools::h5(limerick[["title"]]),
    htmltools::p(
      limerick[["line1"]], htmltools::br(),
      limerick[["line2"]], htmltools::br(),
      limerick[["line3"]], htmltools::br(),
      limerick[["line4"]], htmltools::br(),
      limerick[["line5"]])
  )

}
