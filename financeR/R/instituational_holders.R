institutional_holders <- function(ticker, api_key = api){
  res <- GET(paste0("https://financialmodelingprep.com/api/v3/institutional-holder/",ticker,"?apikey=",api_key))
  data <- fromJSON(rawToChar(res$content))
  return(data)
}
