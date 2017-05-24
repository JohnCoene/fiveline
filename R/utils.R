
# save token
save_token <- function(x){
  save(x, file = ".fivelineToken")
}

# parse credentials
parse_cred <- function(cred){
  httr::content(cred)$token
}

# fetch creds
fetch_credentials <- function(){
  credentials <- tryCatch(get("credentials", envir = cred_env),
                          error = function(e) e)

  file = ".fivelineToken"

  # check if file exists
  if (is(credentials, "error") && file.exists(file)){
    credentials <- get(load(file))
    assign("credentials", credentials, envir = cred_env)
  } else if (is(credentials, "error")){
    stop("No credentials see ?lim_auth", call. = FALSE)
  }

  credentials <- parse_cred(credentials) # parse
  return(credentials)
}


api_call <- function(call){

  uri <- getOption("base_url") # get base url
  uri <- paste0(call, "categories") # build url

  TK <- fetch_credentials() # get token

  resp <- httr::GET(url = uri, httr::add_headers(Authorization = paste("JWT", TK))) # get

  httr::stop_for_status(resp)

  # parse
  list <- httr::content(resp)
  df <- do.call("rbind.data.frame", lapply(list, as.data.frame))

  return(df)
}
