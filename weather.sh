#!/bin/bash
wget -q --spider http://google.com

if [ $? -eq 0 ]; then
    echo
else
    echo "You are offline please connect to the internet"
    exit
fi
echo "Connecting to city database."
for x in $(cat cities.txt);
  do
    weather=$(curl -s http://wttr.in/$x?format=3)
    sleep 1
    echo "The weather for $weather"
done