#!/bin/bash
set -e

# Export env vars for substitution
export $(grep -v '^#' /run/secrets/.env | xargs)

for template in /mysql-init/*.template; do
    target="/docker-entrypoint-initdb.d/$(basename "$template" .template).sql"
    envsubst < "$template" > "$target"
done

exec /usr/local/bin/docker-entrypoint.sh "$@"
