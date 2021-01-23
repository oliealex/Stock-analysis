#' Get company enterprise value
#'
#' @param ticker Required. The name of the ticker.
#' @param period Required. The time period.
#' Valid values are:
#' "annualy" Default
#' "quarterly"
#' @param api_key Required. Your API key.
#'
#' @return Returns a data frame of results containing company enterprise value data.
#' @export
#'
#' @examples
#' company_enterprise_value(ticker = "AAPL", period = "annualy", api_key = api)
company_enterprise_value <- function(ticker, period = "annualy", api_key = api){
  if(period == "quarterly"){
    res <- GET(paste0("https://financialmodelingprep.com/api/v3/enterprise-values/",ticker,"?period=quarter&apikey=",api_key))
    data <- fromJSON(rawToChar(res$content))
  }
  else{
    res <- GET(paste0("https://financialmodelingprep.com/api/v3/enterprise-values/",ticker,"?apikey=",api_key))
    data <- fromJSON(rawToChar(res$content))
  }
  return(data)
}


