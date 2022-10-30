read -p "input a site to ping: " site
while True
do
  if ping -q -c 2 -W 1 $site > /dev/null; then
    echo "https://$site is up"
	  break;
  else
	  echo "https://$site is down"
  fi
sleep 2 
done