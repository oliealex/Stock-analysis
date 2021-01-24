#' Get latest stock news
#'
#' @param api_key Required. Your API key.
#'
#' @return Returns a data frame of results containing the latest stock news.
#' @export
#'
#' @examples
#' latest_stock_news(api_key = "42632c388365783ab0c341411f47ae80")
latest_stock_news <- function(api_key = api){
  res <- GET(paste0("https://financialmodelingprep.com/api/v3/stock_news?limit=50&apikey=",api_key))
  data <- fromJSON(rawToChar(res$content))
  return(data)
}
