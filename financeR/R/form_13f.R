#' Get form_13f
#'
#' @param cik_nr Required. The cik number
#' @param date Rquired. The date in the form "yyyy-mm-dd"
#' @param api_key Required. Your API key.
#'
#' @return Returns a data frame of results containing form 13f data.
#' @export
#'
#' @examples
#' form_13f(cik_nr = "0001067983", date = "2020-01-01", api_key = api)
form_13f <- function(cik_nr = NULL, date, api_key = api){
  res <- GET(paste0("https://financialmodelingprep.com/api/v3/form-thirteen/",cik_nr,"?",date,"&apikey=",api_key))
  data <- fromJSON(rawToChar(res$content))
  return(data)
}
