#' Get most losing stocks
#'
#' @param api_key Required. Your API key.
#'
#' @return Returns a data frame of results containing most losing stocks.
#' @export
#'
#' @examples
#' most_loser(api_key = api)
most_loser <- function(api_key = api){
  res <- GET(paste0("https://financialmodelingprep.com/api/v3/losers?apikey=",api_key))
  data <- fromJSON(rawToChar(res$content))
  return(data)
}
