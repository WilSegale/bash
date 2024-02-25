cd /dev devices
command $devices
if [ $? -ne 0 ]; then
    echo "ERROR:Nothing on the screen to display"
else
    echo "These are the serail devices on your computer."
    sleep 1 
    ls tty.*
    read -e -p "Input the serail device you want to connect to: " serailDeviceName
    screen "${serailDeviceName}"
fi