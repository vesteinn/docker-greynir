#!/bin/bash
#
# This is run once every morning by cron
#
cd $REYNIR_DIR
timeout 120m pypy3 scraper.py --reparse --limit=5000
timeout 40m pypy3 processor.py --update --limit=10000
deactivate
