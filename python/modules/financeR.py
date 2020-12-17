import pandas as pd
import requests
import json

class finance_api:
    '''Finance API class'''

    def __init__(self, api_key):
        self.api_key = api_key

    def api_handler(self, feature, tickers, time=False, period=False):
        '''
        [Description]
        Handles the financialmodelingprep API.
        
        [Arguments]
        feature - API endpoint (string)
        tickers - stock tickers (array of strings)
        time - e.g. 15min 1min etc. (string)
        period - e.g. quarter annual or 10 15 etc. (string)

        [Returns]
        Dataframe
        '''
        if time == False and period == False:
            response = requests.get("https://financialmodelingprep.com/api/v3/{}/{}?apikey={}".format(feature,",".join(tickers),self.api_key))
        elif time == True and period == False:
            response = requests.get("https://financialmodelingprep.com/api/v3/{}/{}/{}?apikey={}".format(feature,time,",".join(tickers),self.api_key))
        elif time == False and period == True:
            response = requests.get("https://financialmodelingprep.com/api/v3/{}/{}?period={}&apikey={}".format(feature,",".join(tickers),period,self.api_key))
        else:
            response = requests.get("https://financialmodelingprep.com/api/v3/{}/{}/{}?period={}&apikey={}".format(feature,time,",".join(tickers),period,self.api_key))


        if 'historical' in response.json():
            df = pd.json_normalize(response.json(), 'historical')
        else:
            df = pd.json_normalize(response.json())

        return df

'''
    def historic_price(self, ticker, time)
        if time == "all":
            response = requests.get("https://financialmodelingprep.com/api/v3/historical-price-full/{}?apikey={}".format(ticker,self.api_key))
        else:
            response = requests.get("https://financialmodelingprep.com/api/v3/historical-chart/{}/{}?apikey={}".format(ticker,time,self.api_key))

        if response.status_code != 200:
            print("Error status code: " + response.status_code)
            return

        df = pd.json_normalize(response.json(), 'historical')
        return df

    def real_time_price(self, tickers)
        
        response = requests.get("https://financialmodelingprep.com/api/v3/quote-short/{}?apikey={}".format(",".join(tickers),self.api_key))

        if response.status_code != 200:
            print("Error status code: " + response.status_code)
            return        

        df = pd.json_normalize(response.json())
        return df

    def company_profile(self, tickers)
        response = requests.get("https://financialmodelingprep.com/api/v3/profile/{}?apikey={}".format(",".join(tickers),self.api_key))

        if response.status_code != 200:
            print("Error status code: " + response.status_code)
            return        

        df = pd.json_normalize(response.json())
        return df'''