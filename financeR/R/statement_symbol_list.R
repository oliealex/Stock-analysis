#' Get finanial statement symbol list
#'
#' @param api_key Required. Your API key.
#'
#' @return Returns a data frame of results containing financial statement symbol list
#' @export
#'
#' @examples
#' financial_statement_symbol_list(api_key = api)
financial_statement_symbol_list <- function(api_key = api){
  res <- GET(paste0("https://financialmodelingprep.com/api/v3/financial-statement-symbol-lists/?apikey=",api_key))
  data <- fromJSON(rawToChar(res$content))
  return(data)
}

