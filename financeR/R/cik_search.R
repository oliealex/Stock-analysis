#' Cik search
#'
#' @param cik_name Required. The cik name you want to search for
#' @param api_key Required. Your API key.
#'
#' @return Returns a data frame of results from your cik search.
#' @export
#'
#' @examples
#' search_cik(cik_name = "Berkshire", api_key = api)
search_cik <- function(cik_name = NULL, api_key = api){
  res <- GET(paste0("https://financialmodelingprep.com/api/v3/cik-search/",cik_name,"?apikey=",api_key))
  data <- fromJSON(rawToChar(res$content))
  return(data)
}

