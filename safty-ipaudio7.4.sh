
#!/bin/sh
#

wget -O /tmp/ipaudio7.6.tar.gz"https://raw.githubusercontent.com/tarekzoka/ipaudio/main/safty-ipaudio7.4.tar.gz"

tar -xzf /tmp/*.tar.gz -C /

rm -r /tmp/safty-ipaudio7.4

killall -9 enigma2

sleep 2;


