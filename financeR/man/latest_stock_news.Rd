% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/latest_stock_news.R
\name{latest_stock_news}
\alias{latest_stock_news}
\title{Get latest stock news}
\usage{
latest_stock_news(api_key = api)
}
\arguments{
\item{api_key}{Required. Your API key.}
}
\value{
Returns a data frame of results containing the latest stock news.
}
\description{
Get latest stock news
}
\examples{
latest_stock_news(api_key = "42632c388365783ab0c341411f47ae80")
}
