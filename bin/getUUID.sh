#sudo blkid /dev/$1 | sed -n 's/.*UUID=\"\([^\"]*\)\".*/\1/p' | sudo vim -
blkid /dev/$1 | sed -n 's/.*UUID=\"\([^\"]*\)\".*/\1/p' | vim -
