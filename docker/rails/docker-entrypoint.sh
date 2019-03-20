#!/bin/bash

# echo "Creating database if it's not present..."
# bin/rails db:create

# echo "Migrating database..."
# bin/rails db:migrate

# If the container has been killed, there may be a stale pid file
# preventing rails from booting up
echo "Removing pids/server.pid"
rm -f tmp/pids/server.pid

# Precompile assets
# echo "Precompile assets"
# rake assets:precompile

exec "$@"
