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

