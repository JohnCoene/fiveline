cred_env <- new.env(hash = TRUE)

.onLoad <- function(libname = find.package("fiveline"), pkgname = "fiveline") {
  options(base_url = "http://www.five-line.org/api/",
          auth_url = "http://www.five-line.org/api-token-auth/")
}
