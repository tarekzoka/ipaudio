#!/bin/sh
#

wget -O /tmp/asound-libasound.so.2.0.tar.gz "https://raw.githubusercontent.com/tarekzoka/ipaudio/main/asound-libasound.so.2.0.tar.gz"

tar -xzf /tmp/*.tar.gz -C /

rm -r /tmp/asound-libasound.so.2.0.tar.gz

wait

by tarek hanfy

killall -9 enigma2

sleep 2;

wait

exit 0  
