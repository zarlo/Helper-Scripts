#!/usr/bin/env bash

dpkg --add-architecture i386
apt-get update
apt-get upgrade -y
apt-get install -y libxml-parser-perl libpath-class-perl perl-modules screen rsync sudo e2fsprogs unzip subversion libarchive-extract-perl pure-ftpd libarchive-zip-perl libc6 libgcc1 git curl
apt-get install -y libstdc++6 libstdc++6:i386 default-jdk
apt-get install -y libc6-i386 libgcc1:i386
apt-get install -y lib32gcc1
apt-get install -y libhttp-daemon-perl

wget -N "https://github.com/OpenGamePanel/Easy-Installers/raw/master/Linux/Debian-Ubuntu/ogp-agent-latest.deb" -O "ogp-agent-latest.deb"
dpkg -i "ogp-agent-latest.deb"

apt-get install -f -y

echo "Agent Info"

cat /root/ogp_user_password
