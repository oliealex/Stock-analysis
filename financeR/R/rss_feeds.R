rss_feeds <- function(api_key = api){
  res <- GET(paste0("https://financialmodelingprep.com/api/v3/rss_feeds?limit=100&apikey=",api_key))
  data <- fromJSON(rawToChar(res$content))
  return(data)
}
