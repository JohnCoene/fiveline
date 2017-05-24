#' List views
#'
#' @description List categories, authors or limericks of limericks available.
#'
#' @examples
#' \dontrun{
#' categories <- list_cat()
#' authors <- list_aut()
#' limericks <- list_lim()
#' }
#'
#' @name list_view
NULL

#' @rdname list_view
#' @export
list_cat <- function(){

  resp <- api_call(call = "categories")

  return(resp)
}

#' @rdname list_view
#' @export
list_aut <- function(){

  resp <- api_call(call = "authors")

  return(resp)
}

#' @rdname list_view
#' @export
list_lim <- function(){

  resp <- api_call(call = "limericks")

  return(resp)
}
