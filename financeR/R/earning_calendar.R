earning_calendar <- function(ticker,  datefrom, dateto , api_key = api){
  res <- GET(paste0("https://financialmodelingprep.com/api/v3/earning_calendar/?from=2019-12-01&to=2020-02-01&apikey=",api_key))
  data <- fromJSON(rawToChar(res$content))
  return(data)
}
