#!/bin/bash

cd
mkdir repos
cd repos
git clone https://aur.archlinux.org/paru-bin
cd paru-bin
makepkg -si
