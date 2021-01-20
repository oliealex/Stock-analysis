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
