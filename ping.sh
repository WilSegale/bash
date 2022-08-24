read -p "input a site to ping: " site
while true
do
  if ping -q -c 2 -W 1 $site > /dev/null; then
    echo "$site is up"
	  break;
  else
	  echo "$site is down"
  fi
sleep 2 
done

