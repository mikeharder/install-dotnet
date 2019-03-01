#!/bin/sh

# echo on
set -x

# https://dotnet.microsoft.com/download/linux-package-manager/ubuntu18-04/sdk-current
wget -q https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

sudo add-apt-repository universe
sudo apt-get -y install apt-transport-https
sudo apt-get update
sudo apt-get -y install dotnet-sdk-2.2
