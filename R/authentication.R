#' Authenticate
#'
#' @description five-line authentication, retrieve token
#'
#' @param username your username, see details.
#' @param password your password, see details.
#' @param verbose boolean if you want feedback on call.
#'
#' @details \code{username} and \code{password} can be obtained by visiting
#'     \href{http://www.five-line.org}{five-line} and creating an account.
#'     Then simply use your username and password in this function.
#'     Tokens are valid for 30 minutes.
#'
#' @examples
#' \dontrun{
#' lim_auth(username = "my_username", password = "my_password")
#' }
#'
#' @export
#'
#' @importFrom methods is
#'
#' @seealso \href{http://www.five-line.org}{five-line}
fl_auth <- function(username, password, verbose = FALSE) {

  if(missing(username) || missing(password)) stop("Username and password required")

  credentials <- list(username = username, password = password)

  uri <- getOption("auth_url")
  TK <- httr::POST(url = uri,
                   encode = "json",
                   body = credentials)

  httr::stop_for_status(TK)

  if(verbose == TRUE) print("Authentication successful!")

  save_token(TK)

}
