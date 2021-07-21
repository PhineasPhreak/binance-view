#!/bin/bash
#
# Github : https://github.com/PhineasPhreak/binance-view
#

env='.env'
requirements='requirements.txt'
config='config.py'

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
    api_key = '<api-key>'
    api_secret = '<api-secret>'
EOF
fi

