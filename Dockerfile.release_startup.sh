#!/bin/bash

# Environment variables that should not be over-written when starting
# the application.
export SECRET_KEY_BASE=`rake secret`

echo "Dumping runtime environment variables:"
env

echo "Running DB migrations:"
bundle exec rails db:migrate

echo "Launching application:"
bundle exec rails server -p 3000 -b 0.0.0.0
