#' Get major index list
#'
#' @param api_key Required. Your API key.
#'
#' @return Returns a data frame of results containing major index list data.
#' @export
#'
#' @examples
#' major_index_list(api_key = "42632c388365783ab0c341411f47ae80")
major_index_list <- function(api_key = api){
  res <- GET(paste0("https://financialmodelingprep.com/api/v3/quotes/index?apikey=",api_key))
  data <- fromJSON(rawToChar(res$content))
  return(data)
}
