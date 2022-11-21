#!/bin/bash

rm -f ~/.vimrc
sed -i "s/source\~\/\.dotfiles\/bashrc\_custom//g" ~/.bashrc 
rm -rf ~/.TRASH 
