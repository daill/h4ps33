## MTD partitions

* 0x000000000000-0x000000050000 : "boot"
* 0x000000050000-0x0000001b0000 : "linux"
* 0x0000001b0000-0x000000500000 : "rootfs"
* 0x000000500000-0x000000590000 : "user"
* 0x000000590000-0x000000800000 : "app"

## recovery in case of emergency

Get into the u-boot console and transfer the affected binary image to the camery. I used tftpboot as well as loady via serial. It automatically saves the transferred bytes to the flash starting at 0xc0000100. So afterwards just copy the bytes to the right location corresponding to locations in the upper mentioned list.

Examples for rootfs

```
# init flash
sf probe 0
# transfer the file here i.e. 
loady
# erase location: offset length
sf erase 0x0000001b0000 0x350000
# write the image: from to length
sf write 0xC1000000 0x0000001b0000 0x350000
``` 
