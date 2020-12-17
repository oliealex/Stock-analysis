import modules.financeR as fin



def main():
    handler = fin.finance_api("e8c39717f3acab1b9dbb851092302da5")
    df_historical_price = handler.api_handler("historical-price-full", ["AAPL"])
    print(df_historical_price)

    df_realtime = handler.api_handler("quote-short", ["AAPL","FB"])
    print(df_realtime)

if __name__ == "__main__":
    main()