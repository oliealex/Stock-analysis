% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/press_releases.R
\name{press_releases}
\alias{press_releases}
\title{Get press releases}
\usage{
press_releases(ticker, api_key = api)
}
\arguments{
\item{ticker}{Required. The name of the ticker.}

\item{api_key}{Required. Your API key.}
}
\value{
Returns a data frame of results press realses.
}
\description{
Get press releases
}
\examples{
press_releases(ticker = "AAPL", api_key = "42632c388365783ab0c341411f47ae80")
}
