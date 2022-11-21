#!/bin/bash
UNM=$(uname)
if [[ "$UNM" != *"Linux"* ]]; then
	echo "ERROR" >> linuxsetup.log && exit 
else
	echo "output of ‘uname’ is equal to ‘Linux’"
fi
mkdir -p ~/.TRASH

if [[ -f "~/.vimrc" ]]; then
	mv ~/.vimrc ~/.bup_vimrc 
	echo " .vimrc file changed to .bup_vimrc" >> linuxsetup.log
fi
cat etc/vimrc > ~/.vimrc

echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc

