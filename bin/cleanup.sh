#!/bin/bash

rm ~/.vimrc
#replacing the selected line with nothing
sed -i 's|source ~/.dotfiles/etc/bashrc custom| |g' ~/.bashrc
#removing the trash in home dir
rm -rf ~/.TRASH/*
