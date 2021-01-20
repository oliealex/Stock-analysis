daily_indicators <- function(ticker, period, type, api_key = api){
  res <- GET(paste0("https://financialmodelingprep.com/api/v3/technical_indicator/daily/",ticker,"?period=",period,"&type=",type,"&apikey=",api_key))
  data <- fromJSON(rawToChar(res$content))
  return(data)
}
