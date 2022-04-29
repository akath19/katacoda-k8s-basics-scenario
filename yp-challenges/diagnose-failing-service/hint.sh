#!/bin/bash -e

seconds_sofar=$1

if [[ $seconds_sofar -ge 60 && $seconds_sofar -lt 150 ]]; then
  echo "Check that all required variables are being setup, also check logs for each application"
fi

if [[ $seconds_sofar -ge 300 && $seconds_sofar -lt 450 ]]; then
  echo "The `Grafana` container cannot use the root `PostgreSQL` user, if this is detected the scenario will be considered a failure"
fi

if [[ $seconds_sofar -ge 600 && $seconds_sofar -lt 900 ]]; then
  echo "The YAML may be correctly formatted but that doesn't mean everything's OK in it"
fi