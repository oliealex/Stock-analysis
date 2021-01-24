#' Get financial statement growth data
#'
#' @param ticker Required. The name of the ticker.
#' @param type Rquired. Type of financial statement growth
#' Valid values are:
#' "income"
#' "balance_sheet"
#' "cash_flow"
#' @param api_key Required. Your API key.
#'
#' @return Returns a data frame of results containing company financial statement growth data.
#' @export
#'
#' @examples
#' financial_statements_growth(
#' ticker = "AAPL",
#' type = "income",
#' api_key = "42632c388365783ab0c341411f47ae80")
financial_statements_growth <- function(ticker, type, api_key = api){
  if(type == "income"){
    res <- GET(paste0("https://financialmodelingprep.com/api/v3/income-statement-growth/",ticker,"?apikey=",api_key))
    data <- fromJSON(rawToChar(res$content))
  }
  if(type == "balance_sheet"){
    res <- GET(paste0("https://financialmodelingprep.com/api/v3/balance-sheet-statement-growth/",ticker,"?apikey=",api_key))
    data <- fromJSON(rawToChar(res$content))
  }
  if(type == "cash_flow"){
    res <- GET(paste0("https://financialmodelingprep.com/api/v3/cash-flow-statement-growth/",ticker,"?apikey=",api_key))
    data <- fromJSON(rawToChar(res$content))
  }
  return(data)
}

