#!/bin/bash
#
# Github : https://github.com/PhineasPhreak/binance-view
#
# Create virtual environment with python3 and pip
python3 -m pip venv .env || \
echo "Error during the creation of the virtual environment"

# Make '.env' my environment
source .env/bin/activate || \
echo "Error with the 'source' command"

# Install Python packages with pip and requirements.txt
pip install -r requirements.txt || \
echo "Error during package installation with pip and 'requirements.txt' file"

# Create config.py file for configuration for API KEY
# See README.md file for more information
if [ -f config.py ] then
    exit 1
if

cat > config.py << EOF
#!/usr/bin/env python3
# -*- coding: utf-8 -*-


# Paste here Public Key and Private Key
api_key = "<api-key>"
api_secret = "<api-secret>"
EOF

