#!/bin/sh

INIT_FILE="/home/neovim/.config/nvim/init.vim"

sudo -u neovim nvim +PlugInstall +UpdateRemotePlugins +qall

