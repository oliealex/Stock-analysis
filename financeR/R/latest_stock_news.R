latest_stock_news <- function(api_key = api){
  res <- GET(paste0("https://financialmodelingprep.com/api/v3/stock_news?limit=50&apikey=",api_key))
  data <- fromJSON(rawToChar(res$content))
  return(data)
}
