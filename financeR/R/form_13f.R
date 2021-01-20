form_13f <- function(cik_nr = NULL, date, api_key = api){
  res <- GET(paste0("https://financialmodelingprep.com/api/v3/form-thirteen/",cik_nr,"?",date,"&apikey=",api_key))
  data <- fromJSON(rawToChar(res$content))
  return(data)
}
