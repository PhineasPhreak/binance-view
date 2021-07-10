#!/usr/bin/env python3
# -*- coding: utf-8 -*-


from binance.spot import Spot

client = Spot()
print(client.time())


# CREATE API_KEY and SECRET_KEY
client = Spot(key='<api_key>', secret='<api_secret>')

# Get account information
print(client.account())

# Post a new order
params = {
    'symbol': 'BTCUSDT',
    'side': 'SELL',
    'type': 'LIMIT',
    'timeInForce': 'GTC',
    'quantity': 0.002,
    'price': 9500
}

response = client.new_order(**params)
print(response)

