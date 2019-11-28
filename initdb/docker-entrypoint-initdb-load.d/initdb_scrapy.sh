#!/bin/bash
set -e

gunzip -c /tmp_host/full_dump_261119.gz | psql -f - postgres

EOSQL
