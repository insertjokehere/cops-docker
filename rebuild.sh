#!/bin/bash

ENABLED_APPS="cloudflare-stun library"

find -type f \( -name "*.service" -o -name "*.timer" \) -exec fleetctl destroy {} \;

units=$(find infra/ -type f \( -name "*.service" -o -name "*.timer" \))
fleetctl start $units

for app in ENABLED_APPS; do
    units=$(find apps/$app/ -type f \( -name "*.service" -o -name "*.timer" \))
    fleetctl start $units
done
