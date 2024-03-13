#!/bin/sh

echo "> Downloading & installing asound.conf file  Please Wait ..."
sleep 3s
dir=/etc/asound.conf

wget -O /etc/asound.conf https://raw.githubusercontent.com/tarekzoka/ipaudio/main/asound.conf

if [ -d $dir/asound.conf ]; then
cp $dir/asound.conf$dir/asound.conf/
fi

echo "> installation of asound.conf file  finished"
wait
echo "> Downloading & installing libasound.so.2.0.0 file  Please Wait ..."
sleep 3s
dir=/usr/lib/libasound.so.2.0.0

wget -O /usr/lib/libasound.so.2.0.0 https://raw.githubusercontent.com/tarekzoka/ipaudio/main/libasound.so.2.0.0

if [ -d $dir/libasound.so.2.0.0 ]; then
cp $dir/libasound.so.2.0.0$dir/libasound.so.2.0.0/
fi

echo "> installation of libasound.so.2.0.0 file  finished"

sleep 3s

exit 0

