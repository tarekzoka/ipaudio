#!/bin/sh
#

wget -O /tmp/safty-ipaudio7.4.tar.gz "https://raw.githubusercontent.com/tarekzoka/ipaudio/main/safty-ipaudio7.4.tar.gz"

tar -xzf /tmp/*.tar.gz -C /

rm -r /tmp/safty-ipaudio7.4.tar.gz

wait

echo tarek hanfy

killall -9 enigma2

sleep 2;

wait

exit 0  

