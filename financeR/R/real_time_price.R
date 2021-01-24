#' Get real time stock price
#'
#' @param tickers Required. The name of the tickers.
#' @param api_key Required. Your API key.
#'
#' @return Returns a data frame of results containing real time stock price data.
#' @export
#'
#' @examples
#' real_time_price(tickers = c("AAPL"),api_key = "42632c388365783ab0c341411f47ae80")
real_time_price <- function(tickers, api_key = api){
  if(length(tickers) > 1){
    res <- GET(paste0("https://financialmodelingprep.com/api/v3/quote-short/",tickers[1],"?apikey=",api_key))
    data <- fromJSON(rawToChar(res$content))
    for (i in 1:length(tickers)) {
      res <- GET(paste0("https://financialmodelingprep.com/api/v3/quote-short/",tickers[i],"?apikey=",api_key))
      data[i,1:3] <- fromJSON(rawToChar(res$content))
    }
  }
  else{
    res <- GET(paste0("https://financialmodelingprep.com/api/v3/quote-short/",tickers,"?apikey=",api_key))
    data <- fromJSON(rawToChar(res$content))
  }
  return(data)
}
