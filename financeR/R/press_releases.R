#' Get press releases
#'
#' @param ticker Required. The name of the ticker.
#' @param api_key Required. Your API key.
#'
#' @return Returns a data frame of results press realses.
#' @export
#'
#' @examples
#' press_releases(ticker = "AAPL", api_key = "42632c388365783ab0c341411f47ae80")
press_releases <- function(ticker, api_key = api){
  res <- GET(paste0("https://financialmodelingprep.com/api/v3/press-releases/",ticker,"?apikey=",api_key))
  data <- fromJSON(rawToChar(res$content))
  return(data)
}
