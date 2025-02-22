#' Get most gaining stocks
#'
#' @param api_key Required. Your API key.
#'
#' @return Returns a data frame of results containing most gaining stocks.
#' @export
#'
#' @examples
#' most_gainer(api_key = "42632c388365783ab0c341411f47ae80")
most_gainer <- function(api_key = api){
  res <- GET(paste0("https://financialmodelingprep.com/api/v3/gainers?apikey=",api_key))
  data <- fromJSON(rawToChar(res$content))
  return(data)
}
