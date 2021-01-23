#' Get statements as reported
#'
#' @param ticker Required. The name of the ticker.
#' @param type Rquired. Type of statements.
#' Valid values are:
#' "income"
#' "balance_sheet"
#' "cash_flow"
#' "full_financial"
#' @param period Required. The time period.
#' Valid values are:
#' "annualy" Default
#' "quarterly"
#' @param api_key Required. Your API key.
#'
#' @return Returns a data frame of results containing statements as reported.
#' @export
#' @export
#'
#' @examples
#' statements_as_reported(ticker = "AAPL", type = "income", period = "annualy", api_key = api)
statements_as_reported <- function(ticker, type, period = "annualy", api_key = api){
  if(period == "quarterly"){
    if(type == "income"){
      res <- GET(paste0("https://financialmodelingprep.com/api/v3/income-statement-as-reported/",ticker,"?period=quarter&apikey=",api_key))
      data <- fromJSON(rawToChar(res$content))
    }
    if(type == "balance_sheet"){
      res <- GET(paste0("https://financialmodelingprep.com/api/v3/balance-sheet-statement-as-reported/",ticker,"?period=quarter&apikey=",api_key))
      data <- fromJSON(rawToChar(res$content))
    }
    if(type == "cash_flow"){
      res <- GET(paste0("https://financialmodelingprep.com/api/v3/cash-flow-statement-as-reported/",ticker,"?period=quarter&apikey=",api_key))
      data <- fromJSON(rawToChar(res$content))
    }
    if(type == "full_financial"){
      res <- GET(paste0("https://financialmodelingprep.com/api/v3/financial-statement-full-as-reported/",ticker,"?period=quarter&apikey=",api_key))
      data <- fromJSON(rawToChar(res$content))
    }
  }
  else{
    if(type == "income"){
      res <- GET(paste0("https://financialmodelingprep.com/api/v3/income-statement-as-reported/",ticker,"?apikey=",api_key))
      data <- fromJSON(rawToChar(res$content))
    }
    if(type == "balance_sheet"){
      res <- GET(paste0("https://financialmodelingprep.com/api/v3/balance-sheet-statement-as-reported/",ticker,"?apikey=",api_key))
      data <- fromJSON(rawToChar(res$content))
    }
    if(type == "cash_flow"){
      res <- GET(paste0("https://financialmodelingprep.com/api/v3/cash-flow-statement-as-reported/",ticker,"?&apikey=",api_key))
      data <- fromJSON(rawToChar(res$content))
    }
    if(type == "full_financial"){
      res <- GET(paste0("https://financialmodelingprep.com/api/v3/financial-statement-full-as-reported/",ticker,"?&apikey=",api_key))
      data <- fromJSON(rawToChar(res$content))
    }
  }
  return(data)
}
