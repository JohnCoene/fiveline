
# save token
save_token <- function(x){
  assign("credentials", x, envir = cred_env)
}

# parse credentials
parse_cred <- function(cred){
  httr::content(cred)$token
}

# fetch creds
fetch_credentials <- function(){

  credentials <- tryCatch(get("credentials", envir = cred_env),
                          error = function(e) e)

  # check if cred exist
  if (is(credentials, "error")){
    stop("No credentials see ?fl_auth", call. = FALSE)
  }

  credentials <- parse_cred(credentials) # parse

  return(credentials)
}


api_call <- function(call){

  uri <- getOption("base_url") # get base url
  uri <- paste0(uri, call) # build url

  TK <- fetch_credentials() # get token

  resp <- httr::GET(url = uri, httr::add_headers(Authorization = paste("JWT", TK))) # get

  httr::stop_for_status(resp)

  # parse
  list <- httr::content(resp)
  df <- plyr::rbind.fill(lapply(list, function(f) {
    as.data.frame(Filter(Negate(is.null), f))
    }))

  return(df)
}
