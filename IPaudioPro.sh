echo
rm -r /usr/lib/enigma2/python/Plugins/Extensions/ipaudiopro
wait
#!/bin/sh
#

wget -O /tmp/ipaudiopro.tar.gz "https://raw.githubusercontent.com/tarekzoka/ipaudio/main/ipaudiopro.tar.gz"

tar -xzf /tmp/*.tar.gz -C /

rm -r /tmp/ipaudiopro.tar.gz

killall -9 enigma2

sleep 2;


