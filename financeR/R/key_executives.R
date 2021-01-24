#' Get company key executives
#'
#' @param tickers Required. The name of the tickers.
#' @param api_key Required. Your API key.
#'
#' @return Returns a data frame of results containing company key executives data.
#' @export
#'
#' @examples
#' key_executives(tickers = "AAPL", api_key = "42632c388365783ab0c341411f47ae80")
key_executives <- function(tickers, api_key = api){
  if(length(tickers) > 1){
    res <- GET(paste0("https://financialmodelingprep.com/api/v3/key-executives/",tickers[1],"?apikey=",api_key))
    data <- fromJSON(rawToChar(res$content))
    for (i in 1:length(tickers)) {
      res <- GET(paste0("https://financialmodelingprep.com/api/v3/key-executives/",tickers[i],"?apikey=",api_key))
      data[i,1:8] <- fromJSON(rawToChar(res$content))
    }
  }
  else{
    res <- GET(paste0("https://financialmodelingprep.com/api/v3/key-executives/",tickers,"?apikey=",api_key))
    data <- fromJSON(rawToChar(res$content))
  }
  return(data)
}
