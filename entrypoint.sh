#!/bin/bash
set -eo pipefail

if [ -z "${AUTH0_DOMAIN}" ]; then echo "AUTH0_DOMAIN is unset" && exit 1; else echo "AUTH0_DOMAIN: ${AUTH0_DOMAIN}"; fi
if [ -z "${AUTH0_MANAGEMENT_CLIENT_ID}" ]; then echo "AUTH0_MANAGEMENT_CLIENT_ID is unset" && exit 1; else echo "AUTH0_MANAGEMENT_CLIENT_ID: ${AUTH0_MANAGEMENT_CLIENT_ID}"; fi
if [ -z "${AUTH0_MANAGEMENT_CLIENT_SECRET}" ]; then echo "AUTH0_MANAGEMENT_CLIENT_SECRET is unset" && exit 1; else echo "AUTH0_MANAGEMENT_CLIENT_SECRET is set"; fi
if [ -z "${APP_ID}" ]; then echo "APP_ID is unset" && exit 1; else echo "APP_ID: ${APP_ID}"; fi
if [ -z "${ORIGIN}" ]; then echo "ORIGIN is unset" && exit 1; else echo "ORIGIN: ${ORIGIN}"; fi

if $1; then 
    echo "Calling Remove!"; 
    python3 /remove_origin.py $APP_ID $ORIGIN
else
    echo "Calling Add!"; 
    python3 /add_origin.py $APP_ID $ORIGIN
fi

exit 0
