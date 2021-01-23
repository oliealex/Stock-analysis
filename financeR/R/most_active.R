#' Get most active stocks
#'
#' @param api_key Required. Your API key.
#'
#' @return Returns a data frame of results containing most active stocks.
#' @export
#'
#' @examples
#' most_active(api_key = api)
most_active <- function(api_key = api){
  res <- GET(paste0("https://financialmodelingprep.com/api/v3/actives?apikey=",api_key))
  data <- fromJSON(rawToChar(res$content))
  return(data)
}
