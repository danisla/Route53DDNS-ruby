#!/usr/bin/env bash

# Run DNS check every 5 minutes.

SCRIPT=/opt/app/route53_ddns.rb

echo "Running ${SCRIPT} every 5 minutes"

while true; do
  ${SCRIPT} -s /opt/app/.aws_secrets --hosted-zone $HOSTED_ZONE_ID --subdomain $SUBDOMAIN --random-sleep
  sleep 300
done
