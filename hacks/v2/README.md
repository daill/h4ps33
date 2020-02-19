# Version 2

This version is using the rootfs and app binary image with the busybox and dropbear compilation of https://github.com/ant-thomas/zsgx1hacks. Furthermore it uses the passwd as well as the code to start an httpd.
So if you're flashing this image, you can use ```root // cxlinux ``` to get access via uart serial and just use root for access via ssh.

It will prevent the loading of the rtspd and factorytest program and ends the ap modus. It will try to load the custom.sh script which could be utilized to access your WiFi. Use the wpa_supplicant.conf to set your WiFi configuration.

 Just copy this image to a sdcard and let the camera boot. It will extract itself.