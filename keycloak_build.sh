#!/bin/bash

function build() {
    /home/keycloak/bin/kc.sh build
    timestamp=$(date +%s)
    echo "$timestamp" > /home/keycloak/build.txt
}

if [ ! -f /home/keycloak/build.txt ]; then
    echo "First run, build"
    build
    exit 0
fi

timestamp=$(cat /home/keycloak/build.txt)
modification_timestamp=$(stat -c '%Y' /home/keycloak/conf/keycloak.conf)
if (( modification_timestamp > timestamp )); then
    echo "Config file modified, rebuild"
    build
    exit 0
fi