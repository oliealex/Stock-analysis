most_loser <- function(api_key = api){
  res <- GET(paste0("https://financialmodelingprep.com/api/v3/losers?apikey=",api_key))
  data <- fromJSON(rawToChar(res$content))
  return(data)
}
