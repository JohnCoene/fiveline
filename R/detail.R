#' List views
#'
#' @description Get categories, authors or limericks of limericks available.
#'
#' @param id id of object to retrieve
#'
#' @seealso \code{\link{list_view}}
#'
#' @examples
#' \dontrun{
#' cat <- get_cat(id = 1) # get limericks in first category
#' aut <- get_aut(id = 1) # get limericks by authord with ID 1
#' lim <- get_lim(id = 1) # get details of limerick ID 1
#' }
#'
#' @name detail_view
NULL

#' @rdname detail_view
#' @export
get_cat <- function(id){
  c <- paste0("categories/", id)
  resp <- api_call(call = c)
  return(resp)
}


#' @rdname detail_view
#' @export
get_aut <- function(id){
  c <- paste0("authors/", id)
  resp <- api_call(call = c)
  return(resp)
}


#' @rdname detail_view
#' @export
get_lim <- function(id){
  c <- paste0("limericks/", id)
  resp <- api_call(call = c)
  return(resp)
}

