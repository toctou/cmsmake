#!/bin/bash

echo "Preparing space..."

rm -rf /etc/cmsmake
rm -f /usr/local/bin/cmsMakeBuild
rm -f /usr/local/bin/cmsMakeStart

echo "Downloading files..."

git clone -q https://github.com/toctou/cmsmake.git /etc/cmsmake

echo "Setting up..."

chmod +x /etc/cmsmake/scripts/cmsMakeBuild.sh
chmod +x /etc/cmsmake/scripts/cmsMakeStart.sh
ln -s /etc/cmsmake/scripts/cmsMakeBuild.sh /usr/local/bin/cmsMakeBuild
ln -s /etc/cmsmake/scripts/cmsMakeStart.sh /usr/local/bin/cmsMakeStart

echo "Cleaning up..."

rm -f install.sh

echo -e "DONE\n"
echo -e "Start building the environment by typing 'cmsMakeBuild' (it takes a while)\n"

