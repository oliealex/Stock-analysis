#' Get in trade day indicators
#'
#' @param ticker Required. The name of the ticker.
#' @param time Rquired. The time-frequency.
#' Valid values are:
#' "1min"
#' "5min"
#' "15min"
#' "30min"
#' "1hour"
#' "4hour"
#' @param period Required. Period for daily indicators
#' @param type Rquired. Type of daily indicators.
#' Valid values are:
#' "SMA"
#' "EMA"
#' "WMA"
#' "DEMA"
#' "TEMA"
#' "williams"
#' "RSI"
#' "ADX"
#' "standardDeviation"
#' @param api_key Required. Your API key.
#'
#' @return Returns a data frame of results containing in trade day indicators.
#' @export
#'
#' @examples
#' intraday_indicators(ticker = "AAPL", time = "1hour", type = "SMA", api_key = api)
intraday_indicators <- function(ticker, time, period, type, api_key = api){
  if(time == "1min"){
    res <- GET(paste0("https://financialmodelingprep.com/api/v3/technical_indicator/",time,"/",ticker,"?period=",period,"&type=",type,"&apikey=",api_key))
    data <- fromJSON(rawToChar(res$content))
    df <- data
  }
  if(time == "5min"){
    res <- GET(paste0("https://financialmodelingprep.com/api/v3/technical_indicator/",time,"/",ticker,"?period=",period,"&type=",type,"&apikey=",api_key))
    data <- fromJSON(rawToChar(res$content))
    df <- data
  }
  if(time == "15min"){
    res <- GET(paste0("https://financialmodelingprep.com/api/v3/technical_indicator/",time,"/",ticker,"?period=",period,"&type=",type,"&apikey=",api_key))
    data <- fromJSON(rawToChar(res$content))
    df <- data
  }
  if(time == "30min"){
    res <- GET(paste0("https://financialmodelingprep.com/api/v3/technical_indicator/",time,"/",ticker,"?period=",period,"&type=",type,"&apikey=",api_key))
    data <- fromJSON(rawToChar(res$content))
    df <- data
  }
  if(time == "1hour"){
    res <- GET(paste0("https://financialmodelingprep.com/api/v3/technical_indicator/",time,"/",ticker,"?period=",period,"&type=",type,"&apikey=",api_key))
    data <- fromJSON(rawToChar(res$content))
    df <- data
  }
  if(time == "4hour"){
    res <- GET(paste0("https://financialmodelingprep.com/api/v3/technical_indicator/",time,"/",ticker,"?period=",period,"&type=",type,"&apikey=",api_key))
    data <- fromJSON(rawToChar(res$content))
    df <- data
  }
  return(df)
}
