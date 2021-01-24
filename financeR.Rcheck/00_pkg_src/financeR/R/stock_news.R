#' Get stock news
#'
#' @param tickers Required. The name of the tickers.
#' @param api_key Required. Your API key.
#'
#' @return Returns a data frame of results containing stock news.
#' @export
#'
#' @examples
#' stock_news(tickers = c("AAPL"), api_key = "42632c388365783ab0c341411f47ae80")
stock_news <- function(tickers, api_key = api){
  if(length(tickers) > 1){
    res <- GET(paste0("https://financialmodelingprep.com/api/v3/stock_news?tickers=",tickers[1],"&limit=1&apikey=",api_key))
    data <- fromJSON(rawToChar(res$content))
    for (i in 1:length(tickers)) {
      res <- GET(paste0("https://financialmodelingprep.com/api/v3/stock_news?tickers=",tickers[i],"&limit=1&apikey=",api_key))
      data[i,1:7] <- fromJSON(rawToChar(res$content))
    }
  }
  else{
    res <- GET(paste0("https://financialmodelingprep.com/api/v3/stock_news?tickers=",tickers,"&limit=1&apikey=",api_key))
    data <- fromJSON(rawToChar(res$content))
  }
  return(data)
}
