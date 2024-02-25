cd /dev
sleep 1 
ls tty.*
read -p "Input the serail device you want to connect to: " serailDeviceName
screen "${serailDeviceName}"