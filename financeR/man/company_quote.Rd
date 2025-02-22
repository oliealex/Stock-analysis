% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/company_quote.R
\name{company_quote}
\alias{company_quote}
\title{Get real time company quote}
\usage{
company_quote(tickers, api_key = api)
}
\arguments{
\item{tickers}{Required. The name of the tickers.}

\item{api_key}{Required. Your API key.}
}
\value{
Returns a data frame of results containing real time company quote data.
}
\description{
Get real time company quote
}
\examples{
company_quote(tickers = c("AAPL"), api_key = "42632c388365783ab0c341411f47ae80")
}
