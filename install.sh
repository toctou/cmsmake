#!/bin/bash

echo "Preparing space..."

rm -rf /etc/cmsmake
rm -f /usr/local/bin/cmsmk

echo "Downloading files..."

git clone -q https://github.com/toctou/cmsmake.git /etc/cmsmake

echo "Setting up..."

chmod +x /etc/cmsmake/scripts/cmsMakeStart.sh
ln -s /etc/cmsmake/scripts/cmsMakeStart.sh /usr/local/bin/cmsmk

echo "Cleaning up..."

rm -f install.sh

echo -e "DONE\n"
echo -e "Invoke the tool cmsMake by typing 'cmsmk'\n"
