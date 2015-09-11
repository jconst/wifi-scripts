function resetIfDead () {
	ping -c 1 -W 2 8.8.8.8 > /dev/null
    if [[ $? -ne 0 ]]; then
        echo "resetting wifi"
        ./reset-wifi.sh
        echo "done"
    else
    	echo "wifi good"
    fi
}

while true; do
	resetIfDead
	sleep 5
done