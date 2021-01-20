historical_stock_splits <- function(ticker, api_key = api){
  res <- GET(paste0("https://financialmodelingprep.com/api/v3/historical-price-full/stock_split/",ticker,"?apikey=",api_key))
  data <- fromJSON(rawToChar(res$content))
  historical <- data$historical
  return(historical)
}
