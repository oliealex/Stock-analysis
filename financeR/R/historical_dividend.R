#' Get historical dividend
#'
#' @param ticker Required. The name of the ticker.
#' @param api_key Required. Your API key.
#'
#' @return Returns a data frame of results containing historical dividend data.
#' @export
#'
#' @examples
#' historical_dividends(ticker = "AAPL", api_key = "42632c388365783ab0c341411f47ae80")
historical_dividends <- function(ticker, api_key = api){
  res <- GET(paste0("https://financialmodelingprep.com/api/v3/historical-price-full/stock_dividend/",ticker,"?apikey=",api_key))
  data <- fromJSON(rawToChar(res$content))
  historical <- data$historical
  return(historical)
}

