#' Get company cash flow statement
#'
#' @param ticker Required. The name of the ticker.
#' @param period Required. The time period.
#' Valid values are:
#' "annualy" Default
#' "quarterly"
#' @param api_key Required. Your API key.
#'
#' @return Returns a data frame of results containing company cash flow statement data.
#' @export
#'
#' @examples
#' cash_flow_statement(ticker = "AAPL", period = "annualy", api_key = api)
cash_flow_statement <- function(ticker, period = "annualy", api_key = api){
  if(period == "quarterly"){
    res <- GET(paste0("https://financialmodelingprep.com/api/v3/cash-flow-statement/",ticker,"?period=quarter&apikey=",api_key))
    data <- fromJSON(rawToChar(res$content))
  }
  else{
    res <- GET(paste0("https://financialmodelingprep.com/api/v3/cash-flow-statement/",ticker,"?apikey=",api_key))
    data <- fromJSON(rawToChar(res$content))
  }
  return(data)
}
