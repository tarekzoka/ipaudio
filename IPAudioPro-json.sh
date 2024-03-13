#!/bin/sh

echo "> Downloading & installing IPAudioPro.json file  Please Wait ..."
sleep 3s
dir=/etc/enigma2/IPAudioPro.json

wget -O /etc/enigma2/ipaudio.json https://raw.githubusercontent.com/tarekzoka/ipaudio/main/IPAudioPro.json

if [ -d $dir/IPAudioPro.json ]; then
cp $dir/IPAudioPro.json $dir/IPAudioPro.json/
fi

echo "> installation of IPAudioPro.json file  finished"
sleep 3s

exit 0

