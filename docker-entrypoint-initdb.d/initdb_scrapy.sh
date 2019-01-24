#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE DATABASE scraper WITH ENCODING 'UTF8'
    LC_COLLATE='is_IS.UTF-8' LC_CTYPE="is_IS.UTF-8"
    TEMPLATE=template0;
    \c scraper
    create extension if not exists "uuid-ossp";

EOSQL
