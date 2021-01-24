pkgname <- "financeR"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
options(pager = "console")
base::assign(".ExTimings", "financeR-Ex.timings", pos = 'CheckExEnv')
base::cat("name\tuser\tsystem\telapsed\n", file=base::get(".ExTimings", pos = 'CheckExEnv'))
base::assign(".format_ptime",
function(x) {
  if(!is.na(x[4L])) x[1L] <- x[1L] + x[4L]
  if(!is.na(x[5L])) x[2L] <- x[2L] + x[5L]
  options(OutDec = '.')
  format(x[1L:3L], digits = 7L)
},
pos = 'CheckExEnv')

### * </HEADER>
library('financeR')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
cleanEx()
nameEx("balance_sheet_statement")
### * balance_sheet_statement

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: balance_sheet_statement
### Title: Get balance sheet statements
### Aliases: balance_sheet_statement

### ** Examples

balance_sheet_statement(
ticker = "AAPL",
period = "annualy",
api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("balance_sheet_statement", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("cash_flow_statement")
### * cash_flow_statement

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: cash_flow_statement
### Title: Get company cash flow statement
### Aliases: cash_flow_statement

### ** Examples

cash_flow_statement(
ticker = "AAPL",
period = "annualy",
api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("cash_flow_statement", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("cik_list")
### * cik_list

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: cik_list
### Title: Get cik list
### Aliases: cik_list

### ** Examples

cik_list(api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("cik_list", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("company_enterprise_value")
### * company_enterprise_value

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: company_enterprise_value
### Title: Get company enterprise value
### Aliases: company_enterprise_value

### ** Examples

company_enterprise_value(
ticker = "AAPL",
period = "annualy",
api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("company_enterprise_value", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("company_financial_growth")
### * company_financial_growth

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: company_financial_growth
### Title: Get company financial growth
### Aliases: company_financial_growth

### ** Examples

company_financial_growth(
ticker = "AAPL",
period = "annualy",
api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("company_financial_growth", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("company_financial_ratios")
### * company_financial_ratios

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: company_financial_ratios
### Title: Get company financial ratios
### Aliases: company_financial_ratios

### ** Examples

company_financial_ratios(tickers = c("AAPL"), api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("company_financial_ratios", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("company_financial_statements")
### * company_financial_statements

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: company_financial_statements
### Title: Get company financial statements
### Aliases: company_financial_statements

### ** Examples

company_financial_statements(
ticker = "AAPL",
period = "annualy",
api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("company_financial_statements", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("company_key_metrics")
### * company_key_metrics

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: company_key_metrics
### Title: Get company key metrics
### Aliases: company_key_metrics

### ** Examples

company_key_metrics(tickers = c("AAPL"), api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("company_key_metrics", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("company_profile")
### * company_profile

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: company_profile
### Title: Get company profile
### Aliases: company_profile

### ** Examples

company_profile(tickers = c("AAPL"), api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("company_profile", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("company_quote")
### * company_quote

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: company_quote
### Title: Get real time company quote
### Aliases: company_quote

### ** Examples

company_quote(tickers = c("AAPL"), api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("company_quote", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("company_ratings")
### * company_ratings

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: company_ratings
### Title: Get company ratings
### Aliases: company_ratings

### ** Examples

company_ratings(tickers = c("AAPL"), api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("company_ratings", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("daily_indicators")
### * daily_indicators

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: daily_indicators
### Title: Get daily indicators
### Aliases: daily_indicators

### ** Examples

daily_indicators(ticker = "AAPL",
period = 10,
type = "EMA",
api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("daily_indicators", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("discounted_cash_flow")
### * discounted_cash_flow

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: discounted_cash_flow
### Title: Get discounted cash flow data
### Aliases: discounted_cash_flow

### ** Examples

discounted_cash_flow(tickers = c("AAPL"), api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("discounted_cash_flow", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("earning_calendar")
### * earning_calendar

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: earning_calendar
### Title: Get earning calendar
### Aliases: earning_calendar

### ** Examples

earning_calendar(ticker = "AAPL",
datefrom = "2019-01-01",
dateto = "2020-01-01",
api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("earning_calendar", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("earning_suprises")
### * earning_suprises

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: earning_suprises
### Title: Get earning suprises
### Aliases: earning_suprises

### ** Examples

earning_suprises(ticker = "AAPL", api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("earning_suprises", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("etf_holders")
### * etf_holders

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: etf_holders
### Title: Get etf holders
### Aliases: etf_holders

### ** Examples

etf_holders(ticker = "AAPL", api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("etf_holders", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("financial_statement_symbol_list")
### * financial_statement_symbol_list

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: financial_statement_symbol_list
### Title: Get finanial statement symbol list
### Aliases: financial_statement_symbol_list

### ** Examples

financial_statement_symbol_list(api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("financial_statement_symbol_list", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("financial_statements_growth")
### * financial_statements_growth

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: financial_statements_growth
### Title: Get financial statement growth data
### Aliases: financial_statements_growth

### ** Examples

financial_statements_growth(
ticker = "AAPL",
type = "income",
api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("financial_statements_growth", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("form_13f")
### * form_13f

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: form_13f
### Title: Get form_13f
### Aliases: form_13f

### ** Examples

form_13f(cik_nr = "0001067983", date = "2020-01-01", api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("form_13f", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("get_tickers")
### * get_tickers

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: get_tickers
### Title: Get tickers
### Aliases: get_tickers

### ** Examples

get_tickers(api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("get_tickers", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("historic_price")
### * historic_price

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: historic_price
### Title: Get historic stock price
### Aliases: historic_price

### ** Examples

historic_price(ticker = "AAPL", time = "full", api_key = "42632c388365783ab0c341411f47ae80")




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("historic_price", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("historical_dcf")
### * historical_dcf

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: historical_dcf
### Title: Get historical discounted cash flow data
### Aliases: historical_dcf

### ** Examples

historical_dcf(tickers = c("AAPL"), api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("historical_dcf", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("historical_dividends")
### * historical_dividends

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: historical_dividends
### Title: Get historical dividend
### Aliases: historical_dividends

### ** Examples

historical_dividends(ticker = "AAPL", api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("historical_dividends", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("historical_stock_splits")
### * historical_stock_splits

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: historical_stock_splits
### Title: Get historical stock splits
### Aliases: historical_stock_splits

### ** Examples

historical_stock_splits(ticker = "AAPL", api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("historical_stock_splits", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("institutional_holders")
### * institutional_holders

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: institutional_holders
### Title: Get institutional holders
### Aliases: institutional_holders

### ** Examples

institutional_holders(ticker = "AAPL", api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("institutional_holders", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("intraday_indicators")
### * intraday_indicators

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: intraday_indicators
### Title: Get in trade day indicators
### Aliases: intraday_indicators

### ** Examples

intraday_indicators(ticker = "AAPL",
time = "1hour",
period =  10,
type = "SMA",
api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("intraday_indicators", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("key_executives")
### * key_executives

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: key_executives
### Title: Get company key executives
### Aliases: key_executives

### ** Examples

key_executives(tickers = "AAPL", api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("key_executives", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("latest_stock_news")
### * latest_stock_news

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: latest_stock_news
### Title: Get latest stock news
### Aliases: latest_stock_news

### ** Examples

latest_stock_news(api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("latest_stock_news", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("major_index_list")
### * major_index_list

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: major_index_list
### Title: Get major index list
### Aliases: major_index_list

### ** Examples

major_index_list(api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("major_index_list", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("market_capitalization")
### * market_capitalization

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: market_capitalization
### Title: Get market capitalixation
### Aliases: market_capitalization

### ** Examples

market_capitalization(tickers = c("AAPL"), api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("market_capitalization", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("most_active")
### * most_active

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: most_active
### Title: Get most active stocks
### Aliases: most_active

### ** Examples

most_active(api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("most_active", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("most_gainer")
### * most_gainer

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: most_gainer
### Title: Get most gaining stocks
### Aliases: most_gainer

### ** Examples

most_gainer(api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("most_gainer", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("most_loser")
### * most_loser

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: most_loser
### Title: Get most losing stocks
### Aliases: most_loser

### ** Examples

most_loser(api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("most_loser", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("mutual_fund_holder")
### * mutual_fund_holder

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: mutual_fund_holder
### Title: Get mutual fund holders
### Aliases: mutual_fund_holder

### ** Examples

mutual_fund_holder(ticker = "AAPL", api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("mutual_fund_holder", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("press_releases")
### * press_releases

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: press_releases
### Title: Get press releases
### Aliases: press_releases

### ** Examples

press_releases(ticker = "AAPL", api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("press_releases", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("real_time_price")
### * real_time_price

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: real_time_price
### Title: Get real time stock price
### Aliases: real_time_price

### ** Examples

real_time_price(tickers = c("AAPL"),api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("real_time_price", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("rss_feeds")
### * rss_feeds

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: rss_feeds
### Title: Get RSS feeds
### Aliases: rss_feeds

### ** Examples

rss_feeds(api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("rss_feeds", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("search_cik")
### * search_cik

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: search_cik
### Title: Cik search
### Aliases: search_cik

### ** Examples

search_cik(cik_name = "Berkshire", api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("search_cik", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("sector_performance")
### * sector_performance

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: sector_performance
### Title: Get sector performance data
### Aliases: sector_performance

### ** Examples

sector_performance(api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("sector_performance", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("statements_as_reported")
### * statements_as_reported

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: statements_as_reported
### Title: Get statements as reported
### Aliases: statements_as_reported

### ** Examples

statements_as_reported(
ticker = "AAPL",
type = "income",
period = "annualy",
api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("statements_as_reported", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("stock_news")
### * stock_news

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: stock_news
### Title: Get stock news
### Aliases: stock_news

### ** Examples

stock_news(tickers = c("AAPL"), api_key = "42632c388365783ab0c341411f47ae80")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("stock_news", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
### * <FOOTER>
###
cleanEx()
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
