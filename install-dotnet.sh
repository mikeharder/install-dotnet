#!/bin/sh

if [ $(id -u) != "0" ]; then
    echo "Please run this script with sudo:"
    echo "sudo $0 $*"
    exit 1
fi

# echo on
set -x

# set OS environment variables
. /etc/os-release

sh -c 'echo "deb [arch=amd64] https://apt-mo.trafficmanager.net/repos/dotnet-release/ $VERSION_CODENAME main" > /etc/apt/sources.list.d/dotnetdev.list'
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 417A0893
apt-get update

apt-get -y install dotnet-dev-1.0.0-preview2.1-003177
