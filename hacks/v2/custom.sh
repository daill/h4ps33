#! /bin/sh

# disable access point mode
sleep 40

killall captive_server
sleep 1
killall udhcpd
sleep 1
killall hostapd
sleep 1
killall wpa_supplicant
sleep 1
# connect to ap
wpa_supplicant -B -c /mnt/mmc/wpa_supplicant.conf -i ra0
sleep 1
udhcpc -ira0


