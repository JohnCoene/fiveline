cred_env <- new.env(hash = TRUE)

.onAttach <- function(libname = find.package("fiveline"), pkgname = "fiveline") {
  file = ".fivelineToken"
  if (file.exists(file)){
    credentials <- get(load(".fivelineToken"))
    assign("credentials", credentials, envir = cred_env)
    packageStartupMessage("credentials loaded")
  } else {
    packageStartupMessage("help('fiveline') for examples")
  }
}

.onLoad <- function(libname = find.package("fiveline"), pkgname = "fiveline") {
  options(base_url = "http://www.five-line.org/api/",
          auth_url = "http://www.five-line.org/api-token-auth/")
  file = ".fivelineToken"
  if (file.exists(file)){
    credentials <- get(load(file))
    assign("credentials", credentials, envir = cred_env)
  }
}
