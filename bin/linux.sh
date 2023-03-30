#!/bin/bash

if (( `uname` != "Linux")); then
	echo "Error message: uname is not Linux" >> linuxsetup.log
	exit
fi

mkdir -p ~/.TRASH

if [ -f ~/.vimrc ]; then
	mv ~/.vimrc ~/.bup_vimrc
	touch ~/.vimrc
	echo "The current .vimrc file was renamed to .bup_vimrc" >> linuxsetup.log
else
	echo ".vimrc does not exist in the homedirectory"
fi

cat etc/vimrc > ~/.vimrc

echo "source ~/.dotfiles/etc/bashrc custom" >> ~/.bashrc
