#!/bin/env bash
echo Starting server
pg_ctl start -D /usr/local/pgsql/data -l serverlog.log

