#' Get mutual fund holders
#'
#' @param ticker Required. The name of the ticker.
#' @param api_key Required. Your API key.
#'
#' @return Returns a data frame of results containing mutual fund holders.
#' @export
#'
#' @examples
#' mutual_fund_holder(ticker = "AAPL", api_key = "42632c388365783ab0c341411f47ae80")
mutual_fund_holder <- function(ticker, api_key = api){
  res <- GET(paste0("https://financialmodelingprep.com/api/v3/mutual-fund-holder/",ticker,"?apikey=",api_key))
  data <- fromJSON(rawToChar(res$content))
  return(data)
}
