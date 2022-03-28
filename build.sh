#!/bin/bash

git clone --recursive https://github.com/LINBIT/linstor-server/

cd linstor-server
git checkout v1.18.0

sudo apt-get install -y default-jdk-headless gradle python3-all devscripts

make debrelease
debuild -us -uc -i -b
