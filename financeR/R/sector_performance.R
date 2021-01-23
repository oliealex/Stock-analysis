#' Get sector performance data
#'
#' @param api_key Required. Your API key.
#'
#' @return Returns a data frame of results containing sector performance data.
#' @export
#'
#' @examples
#' sector_performance(api_key = api)
sector_performance <- function(api_key = api){
  res <- GET(paste0("https://financialmodelingprep.com/api/v3/stock/sectors-performance?apikey=",api_key))
  data <- fromJSON(rawToChar(res$content))
  performance <- data$sectorPerformance
  return(performance)
}
