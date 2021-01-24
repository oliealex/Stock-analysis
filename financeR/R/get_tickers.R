#' Get tickers
#'
#' @param api_key Required. Your API key.
#'
#' @return Returns a data frame of results containing all available tickers
#' @export
#'
#' @examples
#' get_tickers(api_key = "42632c388365783ab0c341411f47ae80")
get_tickers <- function(api_key = api){
  res <- GET(paste0("https://financialmodelingprep.com/api/v3/stock/list/?apikey=",api_key))
  data <- fromJSON(rawToChar(res$content))
  return(data)
}
