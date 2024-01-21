
#!/bin/bas
######################################################################################
## Command=wget https://raw.githubusercontent.com/tarekzoka/ipaudio/main/DD.sh -O - | /bin/sh
###########################################
###########################################
#!/bin/sh
#

wget -O /tmp/IPaudioPro.tar.gz "https://raw.githubusercontent.com/tarekzoka/ipaudio/main/IPaudioPro.tar.gz"

tar -xzf /tmp/*.tar.gz -C /

wait

rm -r /tmp/IPaudioPro.tar.gz

sleep 2;

exit 0
