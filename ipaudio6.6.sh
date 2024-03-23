#!/bin/sh
#

wget -O /tmp/ipaudio-6.6.tar.gz "https://raw.githubusercontent.com/tarekzoka/ipaudio/main/ipaudio-6.6.tar.gz"

tar -xzf /tmp/*.tar.gz -C /

rm -r /tmp/ipaudio-6.6.tar.gz


killall -9 enigma2

sleep 2;



