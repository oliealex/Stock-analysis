#' Get earning calendar
#'
#' @param ticker Required. The name of the ticker.
#' @param datefrom Required. Start date in format "yyyy-mm-dd"
#' @param dateto Rquired. End date in format "yyyy-mm-dd"
#' @param api_key Required. Your API key.
#'
#' @return Returns a data frame of results containing earning calendar.
#' @export
#'
#' @examples
#' earning_calendar(ticker = "AAPL", datefrom = "2019-01-01", datato = "2020-01-01", api_key = api)
earning_calendar <- function(ticker,  datefrom, dateto , api_key = api){
  res <- GET(paste0("https://financialmodelingprep.com/api/v3/earning_calendar/?from=2019-12-01&to=2020-02-01&apikey=",api_key))
  data <- fromJSON(rawToChar(res$content))
  return(data)
}
