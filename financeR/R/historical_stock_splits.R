#' Get historical stock splits
#'
#' @param ticker Required. The name of the ticker.
#' @param api_key Required. Your API key.
#'
#' @return Returns a data frame of results containing historical stock splits.
#' @export
#'
#' @examples
#' historical_stock_splits(ticker = "AAPL", api_key = api)
historical_stock_splits <- function(ticker, api_key = api){
  res <- GET(paste0("https://financialmodelingprep.com/api/v3/historical-price-full/stock_split/",ticker,"?apikey=",api_key))
  data <- fromJSON(rawToChar(res$content))
  historical <- data$historical
  return(historical)
}
