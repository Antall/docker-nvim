#!/bin/sh

INIT_FILE="/root/.config/nvim/init.vim"

nvim +PlugInstall +UpdateRemotePlugins +qall

