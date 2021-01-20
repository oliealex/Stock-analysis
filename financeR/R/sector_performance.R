sector_performance <- function(api_key = api){
  res <- GET(paste0("https://financialmodelingprep.com/api/v3/stock/sectors-performance?apikey=",api_key))
  data <- fromJSON(rawToChar(res$content))
  performance <- data$sectorPerformance
  return(performance)
}
