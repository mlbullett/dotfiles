#!/bin/bash
API_KEY=$(cat ~/.local/bin/private/.darksky_api_key)
CACHE=~/.cache/weatherapi.json

if [ ! -f $CACHE ]; then
    touch $CACHE
fi

LOC=$(curl -s ipinfo.io | jq -r .loc)

CACHEAGE=$(($(date +%s) - $(stat -c '%Y' "$CACHE")))
if [ $CACHEAGE -gt 1740 ] || [ ! -s $CACHE ]; then
    curl -s "https://api.darksky.net/forecast/$API_KEY/$LOC?units=si" -o $CACHE
fi

TEMP=$(printf "%.0f" "$(jq -r .currently.temperature $CACHE)")
SUMMARY=$(jq -r .hourly.summary $CACHE)

echo -e "{\"text\":\"| $TEMP°C $SUMMARY\"}"
