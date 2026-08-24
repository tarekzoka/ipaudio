#!/bin/sh
#

wget -O /tmp/ipaudio-os.tar.gz "https://raw.githubusercontent.com/tarekzoka/ipaudio/raw/main/ip audio-os.tar.gz"

tar -xzf /tmp/*.tar.gz -C /

rm -r /tmp/ipaudio-os.tar.gz

wait

by tarek hanfy

killall -9 enigma2

sleep 2;
