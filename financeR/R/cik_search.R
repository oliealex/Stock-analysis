search_cik <- function(cik_name = NULL, api_key = api){
  res <- GET(paste0("https://financialmodelingprep.com/api/v3/cik-search/",cik_name,"?apikey=",api_key))
  data <- fromJSON(rawToChar(res$content))
  return(data)
}

