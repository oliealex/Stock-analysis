major_index_list <- function(api_key = api){
  res <- GET(paste0("https://financialmodelingprep.com/api/v3/quotes/index?apikey=",api_key))
  data <- fromJSON(rawToChar(res$content))
  return(data)
}
