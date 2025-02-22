% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/company_profile.R
\name{company_profile}
\alias{company_profile}
\title{Get company profile}
\usage{
company_profile(tickers, api_key = api)
}
\arguments{
\item{tickers}{Required. The name of the tickers.}

\item{api_key}{Required. Your API key.}
}
\value{
Returns a data frame of results containing company profiles data.
}
\description{
Get company profile
}
\examples{
company_profile(tickers = c("AAPL"), api_key = "42632c388365783ab0c341411f47ae80")
}
