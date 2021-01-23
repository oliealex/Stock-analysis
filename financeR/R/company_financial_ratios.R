#' Get company financial ratios
#'
#' @param tickers Required. The name of the tickers.
#' @param api_key Required. Your API key.
#'
#' @return Returns a data frame of results containing company financial ratios data.
#' @export
#'
#' @examples
#' company_financial_ratios(tickers = c("AAPL", "MSFT"), api_key = api)
company_financial_ratios <- function(tickers, api_key = api){
  if(length(tickers) > 1){
    res <- GET(paste0("https://financialmodelingprep.com/api/v3/ratios-ttm/",tickers[1],"?apikey=",api_key))
    data <- fromJSON(rawToChar(res$content))
    for (i in 1:length(tickers)) {
      res <- GET(paste0("https://financialmodelingprep.com/api/v3/ratios-ttm/",tickers[i],"?apikey=",api_key))
      data[i,1:57] <- fromJSON(rawToChar(res$content))
    }
  }
  else{
    res <- GET(paste0("https://financialmodelingprep.com/api/v3/ratios-ttm/",tickers,"?apikey=",api_key))
    data <- fromJSON(rawToChar(res$content))
  }
  return(data)
}
