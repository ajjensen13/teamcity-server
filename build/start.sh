#!/usr/bin/env bash
echo mkdir -p /data/teamcity_server/datadir/lib/jdbc
mkdir -p /data/teamcity_server/datadir/lib/jdbc
echo cp /usr/local/lib/postgresql-42.2.12.jar /data/teamcity_server/datadir/lib/jdbc
cp /usr/local/lib/postgresql-42.2.12.jar /data/teamcity_server/datadir/lib/jdbc
. run-services.sh