#!/bin/bash
pip install -r /src/Reynir/requirements.txt
cd /src/Reynir/
pypy3 scraper.py --init
pypy3 main.py
