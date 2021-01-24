#' Get historic stock price
#'
#' @param ticker Required. The name of the ticker.
#' @param time Required. The time of which the market is updated. full, 1min, 5min, 15min, 30min, 1hour or 4hour.
#' Valid values are:
#' "full"
#' "1min"
#' "5min"
#' "15min"
#' "30min"
#' "1hour"
#' "4hour"
#' @param api_key Required. Your API key.
#'
#' @return Returns a data frame of results containing historic stock price data.
#' @export
#'
#' @examples
#' historic_price(ticker = "AAPL", time = "full", api_key = "42632c388365783ab0c341411f47ae80")
#'
#' @import httr
#' @import jsonlite
historic_price <- function(ticker, time, api_key = api){
  if(time == "full"){
    res <- GET(paste0("https://financialmodelingprep.com/api/v3/historical-price-full/",ticker,"?apikey=",api_key))
    data <- fromJSON(rawToChar(res$content))
    df <- data$historical
  }
  if(time == "1min"){
    res <- GET(paste0("https://financialmodelingprep.com/api/v3/historical-chart/1min/",ticker,"?apikey=",api_key))
    data <- fromJSON(rawToChar(res$content))
    df <- data
  }
  if(time == "5min"){
    res <- GET(paste0("https://financialmodelingprep.com/api/v3/historical-chart/5min/",ticker,"?apikey=",api_key))
    data <- fromJSON(rawToChar(res$content))
    df <- data
  }
  if(time == "15min"){
    res <- GET(paste0("https://financialmodelingprep.com/api/v3/historical-chart/15min/",ticker,"?apikey=",api_key))
    data <- fromJSON(rawToChar(res$content))
    df <- data
  }
  if(time == "30min"){
    res <- GET(paste0("https://financialmodelingprep.com/api/v3/historical-chart/30min/",ticker,"?apikey=",api_key))
    data <- fromJSON(rawToChar(res$content))
    df <- data
  }
  if(time == "1hour"){
    res <- GET(paste0("https://financialmodelingprep.com/api/v3/historical-chart/1hour/",ticker,"?apikey=",api_key))
    data <- fromJSON(rawToChar(res$content))
    df <- data
  }
  if(time == "4hour"){
    res <- GET(paste0("https://financialmodelingprep.com/api/v3/historical-chart/4hour/",ticker,"?apikey=",api_key))
    data <- fromJSON(rawToChar(res$content))
    df <- data
  }
  return(df)
}
