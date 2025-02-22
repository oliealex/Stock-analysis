#' Get RSS feeds
#'
#' @param api_key Required. Your API key.
#'
#' @return Returns a data frame of results containing RSS feeds.
#' @export
#'
#' @examples
#' rss_feeds(api_key = "42632c388365783ab0c341411f47ae80")
rss_feeds <- function(api_key = api){
  res <- GET(paste0("https://financialmodelingprep.com/api/v3/rss_feeds?limit=100&apikey=",api_key))
  data <- fromJSON(rawToChar(res$content))
  return(data)
}
