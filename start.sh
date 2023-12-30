#!/bin/bash

# Install dependencies
pip3 install -r requirements.txt

# Set environment variables
export FLASK_APP=index.py
export FLASK_RUN_HOST=0.0.0.0
export FLASK_RUN_PORT=3000

# Run Flask app
flask run
