statements_as_reported <- function(ticker,type, period = "annualy", api_key = api){
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
