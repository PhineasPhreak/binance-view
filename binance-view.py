#!/usr/bin/env python3
# -*- coding: utf-8 -*-


from binance.spot import Spot
import config

client = Spot()
print(client.time())

# See the 'config.py' to import your Public and Private Key
client = Spot(key='config.api_key', secret='config.api_secret')

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

