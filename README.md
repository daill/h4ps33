# h4ps33 customs

Here you'll find some images or scripts to customize the "1080P WIFI IP Wlan Kamera". In my case it was branded by HapSee.

It has an Goke GK7201 chip and a W25Q64FV flash memory which makes it different from the one this repo https://github.com/ant-thomas/zsgx1hacks.
There you'll find some prepared content for a sdcard to get access to his specific camera. Anways I'll use his compilation of busybox and dropbear to make something going on here, so many thanks for your work.

## Warranty

Beware if you use these mods you lose any warranty and I do not give any warranty as well. So use at own risk. 

## How to dev

I managed to have some custom code running on the chip - which is fairly not that hard, the hard part (using the cam driver etc. pp.) was not successful yet. I used this DockerFile https://github.com/bolshevik/goke-GK7102-customizer/tree/master/tools/compile and the SDK from https://github.com/ant-thomas/zsgx1hacks


## Log

### 19.02.20

The second hack can be used to load the sshd, tftpd and connect to you Wifi. Until now no further progress regarding rtspd respectively udp streams.

### 15.02.20

Until now I know that the rtspd seems to run just for factory testing. The real encoding tool is "avencode" tool. Togehter with the IOTCare app the app is able to receive the stream. The streaming ports must then be 7101 and 7103. The question is in which format ...
