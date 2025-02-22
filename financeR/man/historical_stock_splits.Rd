% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/historical_stock_splits.R
\name{historical_stock_splits}
\alias{historical_stock_splits}
\title{Get historical stock splits}
\usage{
historical_stock_splits(ticker, api_key = api)
}
\arguments{
\item{ticker}{Required. The name of the ticker.}

\item{api_key}{Required. Your API key.}
}
\value{
Returns a data frame of results containing historical stock splits.
}
\description{
Get historical stock splits
}
\examples{
historical_stock_splits(ticker = "AAPL", api_key = "42632c388365783ab0c341411f47ae80")
}
