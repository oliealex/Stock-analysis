company_financial_growth <- function(ticker, period = "annualy", api_key = api){
  if(period == "quarterly"){
    res <- GET(paste0("https://financialmodelingprep.com/api/v3/financial-growth/",ticker,"?period=quarter&apikey=",api_key))
    data <- fromJSON(rawToChar(res$content))
  }
  else{
    res <- GET(paste0("https://financialmodelingprep.com/api/v3/financial-growth/",ticker,"?apikey=",api_key))
    data <- fromJSON(rawToChar(res$content))
  }
  return(data)
}
