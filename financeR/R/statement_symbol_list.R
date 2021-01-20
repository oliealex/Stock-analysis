financial_statement_symbol_list <- function(api_key = api){
  res <- GET(paste0("https://financialmodelingprep.com/api/v3/financial-statement-symbol-lists/?apikey=",api_key))
  data <- fromJSON(rawToChar(res$content))
  return(data)
}

