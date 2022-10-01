#!/bin/bash

cd ~/repos
mkdir blackarch
cd blackarch
curl -O https://blackarch.org/strap.sh
chmod +x strap.sh
./strap.sh
