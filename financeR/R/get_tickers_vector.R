get_tickers_vector <- function(api_key = api){
  res <- GET(paste0("https://financialmodelingprep.com/api/v3/stock/list/?apikey=",api_key))
  data <- fromJSON(rawToChar(res$content))
  vector <- numeric(0)
  vector <- data[,1]
  return(vector)
}

