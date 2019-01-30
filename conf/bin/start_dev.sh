#!/bin/bash
cd $REYNIR_DIR
cp --no-clobber -r /usr/local/reynir_orig/* /usr/local/site-packages/reynir/
pypy3 scraperinit.py
gunicorn main:app \
--workers 3 \
--bind 0.0.0.0:5000 \
--reload          
