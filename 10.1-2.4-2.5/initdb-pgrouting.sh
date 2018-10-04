#!/bin/sh
set -e

# Perform all actions as user 'postgres'
export PGUSER=postgres

# Add pgRouting Functions to the database
psql --dbname="$POSTGRES_DB" <<EOSQL
CREATE EXTENSION postgis IF NOT EXISTS pgrouting;
CREATE EXTENSION pgrouting IF NOT EXISTS pgrouting;
EOSQL
