#!/bin/bash

# THEME

sudo apt install gnome-tweaks
git clone https://github.com/daniruiz/flat-remix "$HOME/flat-remix"
git clone https://github.com/daniruiz/flat-remix-gtk "$HOME/flat-remix-gtk"
mkdir -p ~/.icons && mkdir -p ~/.themes
cp -r ~/flat-remix/Flat-Remix* ~/.icons/ && cp -r ~/flat-remix-gtk/Flat-Remix-GTK* ~/.themes/

