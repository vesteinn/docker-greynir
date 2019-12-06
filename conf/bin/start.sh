#!/bin/bash
cd $REYNIR_DIR
#pypy3 scraper.py --init

gunicorn --bind 0.0.0.0:5000 \
         main:app --workers 3
