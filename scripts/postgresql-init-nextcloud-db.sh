#!/usr/bin/env bash
set -e

psql -v ON_ERROR_STOP=1 --username "postgres" <<-EOSQL
	CREATE DATABASE nextcloud;
	CREATE DATABASE npm;
	GRANT ALL PRIVILEGES ON DATABASE nextcloud TO postgres;
	GRANT ALL PRIVILEGES ON DATABASE npm TO postgres;
EOSQL
