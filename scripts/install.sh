#!/bin/bash

echo "Preparing space..."

CMSMAKEROOT=$HOME/cmsmake
BINFOLDER=$HOME/bin

mkdir -p $CMSMAKEROOT
mkdir -p $BINFOLDER

rm -rf $CMSMAKEROOT
rm -f $BINFOLDER/cmsMakeBuild
rm -f $BINFOLDER/cmsMakeStart

echo "Downloading files..."

git clone -q https://github.com/toctou/cmsmake.git $CMSMAKEROOT

echo "Setting up..."

chmod +x $CMSMAKEROOT/scripts/cmsMakeBuild.sh
chmod +x $CMSMAKEROOT/scripts/cmsMakeStart.sh

ln -s $CMSMAKEROOT/scripts/cmsMakeBuild.sh $BINFOLDER/cmsMakeBuild
ln -s $CMSMAKEROOT/scripts/cmsMakeStart.sh $BINFOLDER/cmsMakeStart

echo "Cleaning up..."

rm -f install.sh

echo -e "DONE\n"
echo -e "Start building the environment by typing 'cmsMakeBuild' (it takes a while)\n"

