#' Title
#'
#' @param ticker
#' @param time
#' @param api_key
#'
#' @return
#' @export
#'
#' @examples
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
