#!/bin/bash
cd /src/Reynir/
# TODO remove when in Reynir repo
pip install gunicorn
pypy3 scraperinit.py
gunicorn --bind 0.0.0.0:5000 \
         main:app --workers 3
