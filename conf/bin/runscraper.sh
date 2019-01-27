#!/bin/bash
# Scraper
cd $REYNIR_DIR
timeout 20m pypy3 scraper.py --limit=2500
deactivate
# Tagger
cd $REYNIR_DIR/vectors
timeout 20m pypy3 builder.py --limit=2500 --notify tag
deactivate
# Processor
cd $REYNIR_DIR
timeout 20m pypy3 processor.py --limit=3000

