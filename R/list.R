#' Get categories
#'
#' @description Fetch categories of limericks available.
#'
#' @export
lim_category <- function(){

  resp <- api_call(call = "categories")

  return(resp)
}

#' Get authors
#'
#' @description Fetch categories of limericks available.
#'
#' @export
lim_authors <- function(){

  resp <- api_call(call = "authors")

  return(resp)
}

#' Get limericks
#'
#' @description Fetch list of limericks available.
#'
#' @export
lim_list <- function(){

  resp <- api_call(call = "limericks")

  return(resp)

  return(df)
}
