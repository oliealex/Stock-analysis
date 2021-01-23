#' Get earning suprises
#'
#' @param ticker Required. The name of the ticker.
#' @param api_key Required. Your API key.
#'
#' @return Returns a data frame of results containing earning suprises data.
#' @export
#'
#' @examples
#' earning_suprises(ticker = "AAPL", api_key = api)
  earning_suprises <- function(ticker, api_key = api){
  res <- GET(paste0("https://financialmodelingprep.com/api/v3/earnings-surpises/",ticker,"?apikey=",api_key))
  data <- fromJSON(rawToChar(res$content))
  return(data)
}
