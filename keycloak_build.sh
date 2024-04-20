#!/bin/bash

if [ ! -f /home/keycloak/build.txt ]; then
    /home/keycloak/bin/kc.sh build
    timestamp=$(date +%s)
    echo "$timestamp" > /home/keycloak/build.txt
fi