#' Get institutional holders
#'
#' @param ticker Required. The name of the ticker.
#' @param api_key Required. Your API key.
#'
#' @return Returns a data frame of results containing institutional holders.
#' @export
#'
#' @examples
#' institutional_holders(ticker = "AAPL", api_key = api)
institutional_holders <- function(ticker, api_key = api){
  res <- GET(paste0("https://financialmodelingprep.com/api/v3/institutional-holder/",ticker,"?apikey=",api_key))
  data <- fromJSON(rawToChar(res$content))
  return(data)
}
