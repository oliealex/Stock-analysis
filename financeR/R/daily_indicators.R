#' Get daily indicators
#'
#' @param ticker Required. The name of the ticker.
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
#' @return Returns a data frame of results containing daily indicators.
#' @export
#'
#' @examples
#' daily_indicators(ticker = "AAPL", period = 10, type = "EMA", api_key = api)
daily_indicators <- function(ticker, period, type, api_key = api){
  res <- GET(paste0("https://financialmodelingprep.com/api/v3/technical_indicator/daily/",ticker,"?period=",period,"&type=",type,"&apikey=",api_key))
  data <- fromJSON(rawToChar(res$content))
  return(data)
}
