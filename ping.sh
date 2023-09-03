#!/bin/bash

while true; do
  read -p "Input a site to ping: " site
  
  if [ -z "$site" ]; then
    echo "Please input a site to ping"
  elif ping -q -c 2 -W 1 "$site" > /dev/null; then
    echo "https://$site is up 😀"
    break
  else
    echo "https://$site is down 😭"
  fi
  
  sleep 2
done
