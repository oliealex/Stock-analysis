#' Get company financial statements
#'
#' @param ticker Required. The name of the ticker.
#' @param period Required. The time period.
#' Valid values are:
#' "annualy" Default
#' "quarterly"
#' @param api_key Required. Your API key.
#'
#' @return Returns a data frame of results containing company financial statements data.
#' @export
#'
#' @examples
#' company_financial_statements(
#' ticker = "AAPL",
#' period = "annualy",
#' api_key = "42632c388365783ab0c341411f47ae80")
company_financial_statements <- function(ticker, period = "annualy", api_key = api){
  if(period == "quarterly"){
    res <- GET(paste0("https://financialmodelingprep.com/api/v3/income-statement/",ticker,"?period=quarter&apikey=",api_key))
    data <- fromJSON(rawToChar(res$content))
  }
  else{
    res <- GET(paste0("https://financialmodelingprep.com/api/v3/income-statement/",ticker,"?apikey=",api_key))
    data <- fromJSON(rawToChar(res$content))
  }
  return(data)
}
?get_artist_audio_features
