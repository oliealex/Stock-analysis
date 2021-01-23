#' Get company financial growth
#'
#' @param ticker Required. The name of the ticker.
#' @param period Required. The time period.
#' Valid values are:
#' "annualy" Default
#' "quarterly"
#' @param api_key Required. Your API key.
#'
#' @return Returns a data frame of results containing company financial growth data.
#' @export
#'
#' @examples
#' company_financial_growth(ticker = "AAPL", period = "annualy", api_key = api)
company_financial_growth <- function(ticker, period = "annualy", api_key = api){
  if(period == "quarterly"){
    res <- GET(paste0("https://financialmodelingprep.com/api/v3/financial-growth/",ticker,"?period=quarter&apikey=",api_key))
    data <- fromJSON(rawToChar(res$content))
  }
  else{
    res <- GET(paste0("https://financialmodelingprep.com/api/v3/financial-growth/",ticker,"?apikey=",api_key))
    data <- fromJSON(rawToChar(res$content))
  }
  return(data)
}
