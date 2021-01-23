#' Get etf holders
#'
#' @param ticker Required. The name of the ticker.
#' @param api_key Required. Your API key.
#'
#' @return Returns a data frame of results containing etf holders.
#' @export
#'
#' @examples
#' etf_holders(ticker = "AAPL", api_key = api)
etf_holders <- function(ticker, api_key = api){
  res <- GET(paste0("https://financialmodelingprep.com/api/v3/institutional-holder/",ticker,"?apikey=",api_key))
  data <- fromJSON(rawToChar(res$content))
  return(data)
}
