#!/bin/sh

opkg install "gstreamer1.0-plugins-good"
opkg install "gstreamer1.0-plugins-base"
opkg install "gstreamer1.0-plugins-bad"
opkg install "gstreamer1.0-plugins-ugly"

if [ -d /usr/lib/enigma2/python/Plugins/Extensions/IPaudioPro ]; then

opkg install alsa-plugins
opkg install libasound2 
opkg install libavcodec60 
opkg install libavformat60 
opkg install libc6 
opkg install libgcc1 
opkg install libpython3.11-1.0
opkg install libstdc++6 
opkg install python3-core
opkg install python3-cryptography


else
echo ""
fi

exit 0
