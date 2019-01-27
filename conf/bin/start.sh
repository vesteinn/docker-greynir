#!/bin/bash
cd $REYNIR_DIR
pypy3 scraperinit.py
gunicorn --bind 0.0.0.0:5000 \
         main:app --workers 3
