import json
import requests
import pandas as pd
from bs4 import BeautifulSoup
from pandas.io.json import json_normalize

#USA
def usa(csv):

    fed = pd.read_csv('index.csv')
    fed_1 = fed.drop(['Month', 'Day', 'Federal Funds Lower Target', 'Effective Federal Funds Rate',
    'Real GDP (Percent Change)', 'Unemployment Rate', 'Inflation Rate'], axis=1)
    fed_1['USA'] = fed_1[['Federal Funds Target Rate', 'Federal Funds Upper Target']].sum(axis=1)
    fed_2 = fed_1[['Year', 'USA']]
    fed_3 = fed_2.drop_duplicates(subset='Year')
    fed_4 = fed_3[(fed_3 != 0).all(1)]
    fed_5 = fed_4.reset_index(drop=True)
    return fed_5
#EU
def eu(ws1):

    url = ws1
    html = requests.get(url).content
    soup = BeautifulSoup(html, 'html.parser')
    text = [i.text for i in soup.find_all('tr')]
    lst = [text[i].split('\n') for i in range(len(text))]
    lst_1 = [[i for i in e if i != '' and i != '\xa0'] for e in lst]
    df = pd.DataFrame(lst_1)
    dft = df.T
    dft.columns = dft.iloc[0]
    dft_1 = dft.drop(dft.index[0])
    cols = [i for i in dft_1.columns if ' ' not in i and 'a' not in i]
    dft_2 = dft_1[cols]
    df_1 = dft_2.T.reset_index()
    df_2 = df_1.drop(df_1[[1, 2, 5]], axis=1)
    df_2[3] = df_2[3].str.replace('-', '')
    df_2[4] = df_2[4].str.replace('-', '')
    df_2['EU'] = df_2[[3, 4]].sum(axis=1)
    df_3 = df_2.drop(df_2[[3, 4]], axis=1)
    df_3[0] = df_3[0].astype(int)
    df_3['EU'] = df_3['EU'].astype(float)
    df_4 = df_3.rename({0: 'Year'}, axis=1)
    df_5 = df_4.sort_values(by=['Year'], ascending=True).reset_index(drop=True)
    return df_5

#Canada
def canada(ws2):

    url = ws2
    html = requests.get(url).content
    soup = BeautifulSoup(html, 'html.parser')
    text = [i.text for i in soup.find_all('tr', {'class': 'bocss-table__tr'})]
    lst = [text[i].split('\n') for i in range(len(text))]
    can = pd.DataFrame(lst)
    can1 = can.iloc[3:]
    can2 = can1.drop([3, 4], axis=1)
    can2['Year'] = can2[1].str.split('-').str[0]
    can3 = can2.drop(1, axis=1)
    cols = can3.columns.tolist()
    cols = cols[-1:] + cols[:-1]
    can3 = can3[cols]
    can3 = can3.drop(0, axis=1)
    can3['Year'] = can3['Year'].astype(int)
    can3[2] = can3[2].astype(float)
    can4 = can3.rename({2: 'Canada'}, axis=1)
    can5 = can4.drop_duplicates(subset='Year')
    can5 = can5.reset_index()
    return can5

#Mexico
def mexico(api, token):

    token = token
    response = requests.get(api + token)
    results = response.json()
    flat = json_normalize(results)
    return flat

#Output
csv = 'index.csv'
ws1 = 'https://www.ecb.europa.eu/stats/policy_and_exchange_rates/key_ecb_interest_rates/html/index.en.html'
ws2 = 'https://www.bankofcanada.ca/rates/interest-rates/canadian-interest-rates/?lookupPage=lookup_canadian_interest.php&startRange=2009-11-08&rangeType=dates&dFrom=2009-11-11&dTo=2019-11-11&rangeValue=1&rangeWeeklyValue=1&rangeMonthlyValue=1&series%5B%5D=V122530&ByDate_frequency=daily&submit_button=Submit'
api = 'https://www.banxico.org.mx/SieAPIRest/service/v1/series/SF61745/datos/?token='
token = 'b3a42579e945f31037795028c6fabfbbcd3899b547233a999f8c61e54a421cf9'
frames = [usa(csv), eu(ws1), canada(ws2)]
output = pd.concat(frames, ignore_index=True)
output = output[['Year', 'USA', 'EU', 'Canada']]
output.to_csv('output.csv', index=False)



