#!/bin/bash
cd /src/Reynir/
pip install -r requirements.txt
pip install gunicorn
pypy3 scraperinit.py
gunicorn --reload \
         --bind 0.0.0.0:5000 \
         main:app --workers 3
