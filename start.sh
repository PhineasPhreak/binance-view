#!/bin/bash
#
# PhineasPhreak (AS PSPK)
# Github : https://github.com/PhineasPhreak/binance-view
#

env='.env'
requirements='requirements.txt'
config='config.py'

# Get API-KEY and SECRET-KEY with prompt
api_key=$1
secret_key=$2

if [[ -z $api_key ]]; then
    api_key='<api-key>'
else
    api_key=$1
fi

if [[ -z $secret_key ]]; then
    secret_key='<secret-key>'
else
    secret_key=$2
fi

# Check if a directory exists
if [[ -d $env ]]; then
    echo "[*] Directiry '$env' exist"
    exit 1
else
    # Create virtual environment with python3 and pip
    echo "[+] Create virtual environment..."
    python3 -m venv $env || \
    echo "Error during the creation of the virtual environment" || exit 1
fi
sleep 1

# Make '.env' my environment
echo "[+] Choose '$env' like environment"
source .env/bin/activate || \
echo "Error with the 'source' command" || exit 1
sleep 1

# Install Python packages with pip and requirements.txt
echo "[+] Install packages with pip3"
pip3 install -r $requirements || \
echo "Error during package installation with pip and 'requirements.txt' file" || exit 1
sleep 1

# Create config.py file for configuration for API KEY
# See README.md file for more information
if [[ -f $config ]]; then
    echo "[*] File '$config' exist"
    exit 1
else
    echo "[+] Configuration '$config'"
    cat > config.py << EOF
#!/usr/bin/env python3
# -*- coding: utf-8 -*-


# Paste here Public Key and Private Key
api_key = '$api_key'
secret_key = '$secret_key'
EOF
fi

