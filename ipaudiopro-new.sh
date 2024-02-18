#!/bin/sh
# Check python
pyVersion=$(python -c"from sys import version_info; print(version_info[0])")
arch=$(uname -m)
if [ "$pyVersion" = 3 ]; then


if [ -d /usr/lib/enigma2/python/Plugins/Extensions/IPaudioPro ]; then
echo "> removing package please wait..."
sleep 3s 
rm -rf /usr/lib/enigma2/python/Plugins/Extensions/IPaudioPro > /dev/null 2>&1

status='/var/lib/opkg/status'
package='enigma2-plugin-extensions-ipaudiopro'
if grep -q $package $status; then
opkg remove $package /dev/null 2>&1
fi


echo "*******************************************"
echo "*             Removed Finished            *"
echo "*            Uploaded By Tarek_hanfy          *"
echo "*******************************************"
sleep 3s

else

#remove unnecessary files and folders
if [  -d "/CONTROL" ]; then
rm -r  /CONTROL >/dev/null 2>&1
fi
rm -rf /control >/dev/null 2>&1
rm -rf /postinst >/dev/null 2>&1
rm -rf /preinst >/dev/null 2>&1
rm -rf /prerm >/dev/null 2>&1
rm -rf /postrm >/dev/null 2>&1
rm -rf /tmp/*.ipk >/dev/null 2>&1
rm -rf /tmp/*.tar.gz >/dev/null 2>&1

#config
plugin=ipaudiopro
version=1.1
url=https://github.com/tarekzoka/ipaudio/raw/main/ipaudiopro-1.1.tar.gz
package=/var/volatile/tmp/$plugin-$version.tar.gz

#download & install
echo "> Downloading $plugin-$version package  please wait ..."
sleep 3s

wget -O $package --no-check-certificate $url
tar -xzf $package -C /
extract=$?
rm -rf $package >/dev/null 2>&1

#check python version
python=$(python -c "import platform; print(platform.python_version())")

case $python in 
3.9.7|3.9.9)
if [ "$arch" == "mips" ]; then
cp -rf /tmp/ipaudiopro/mips-py3.9/* / >/dev/null 2>&1
elif [ "$arch" == "armv7l" ]; then
cp -rf /tmp/ipaudiopro/arm-py3.9/* / >/dev/null 2>&1
fi
;;

3.11.0|3.11.1|3.11.2|3.11.3|3.11.4|3.11.5|3.11.6)
if [ "$arch" == "mips" ]; then
cp -rf /tmp/ipaudiopro/mips-py3.11/* / >/dev/null 2>&1
elif [ "$arch" == "armv7l" ]; then
cp -rf /tmp/ipaudiopro/arm-py3.11/* / >/dev/null 2>&1
fi
;;
esac

rm -rf /tmp/ipaudiopro >/dev/null 2>&1

echo ''
if [ $extract -eq 0 ]; then
echo "> $plugin-$version package installed successfully"
echo "> Uploaded By TAREK"
sleep 3s

else

echo "> $plugin-$version package installation failed"
sleep 3s
fi
fi

else
echo "> your image is not supported"
fi
exit 0
