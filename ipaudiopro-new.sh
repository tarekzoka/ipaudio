#!/bin/sh
#

rm -r /usr/lib/enigma2/python/Plugins/Extensions/ipaudiopro
wait

#!/bin/sh
#

wget -O /tmp/py3.9-1.1.tar.gz "https://raw.githubusercontent.com/tarekzoka/ipaudio/main/py3.9-1.1.tar.gz"

tar -xzf /tmp/*.tar.gz -C /

rm -r /tmp/-py3.9-1.1.tar.gz
wait

#!/bin/sh
#

wget -O /tmp/py3.9-1.1.tar.gz "https://raw.githubusercontent.com/tarekzoka/ipaudio/main/ipaudio-py3.12-1.1.tar.gz"

tar -xzf /tmp/*.tar.gz -C /

rm -r /tmp/ipaudio-py3.12-1.1.tar.gz

killall -9 enigma2


