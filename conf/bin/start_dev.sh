#!/bin/bash
cd $REYNIR_DIR
pip install -r requirements.txt
pypy3 scraperinit.py
gunicorn --reload \
         --bind 0.0.0.0:5000 \
         main:app --workers 3
