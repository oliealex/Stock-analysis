most_gainer <- function(api_key = api){
  res <- GET(paste0("https://financialmodelingprep.com/api/v3/gainers?apikey=",api_key))
  data <- fromJSON(rawToChar(res$content))
  return(data)
}
