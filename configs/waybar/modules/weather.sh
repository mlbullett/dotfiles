#!/bin/bash
API_KEY=$(cat ~/.local/bin/private/.openweather_key)
CACHE=~/.cache/weatherapi.json

if [ ! -f $CACHE ]; then
    touch $CACHE
fi

LOC=$(curl -s ipinfo.io | jq -r .loc)
LAT=$(echo $LOC | cut -f 1 -d ",")
LON=$(echo $LOC | cut -f 2 -d ",")

CACHEAGE=$(($(date +%s) - $(stat -c '%Y' "$CACHE")))
if [ $CACHEAGE -gt 1740 ] || [ ! -s $CACHE ]; then
    curl -s "https://api.openweathermap.org/data/2.5/weather?lat=$LAT&lon=$LON&appid=$API_KEY&units=metric" -o $CACHE
fi

TEMP=$(printf "%.0f" "$(jq -r .main.feels_like $CACHE)")
SUMMARY=$(jq -r .weather[0].description $CACHE)

echo -e "{\"text\":\"| $TEMP°C $SUMMARY\"}"
