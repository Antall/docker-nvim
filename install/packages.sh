#!/bin/sh

VIMPLUG_FILE="/root/.config/nvim/autoload/plug.vim"
VIMPLUG_URL="https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"

apk add --update --no-cache \
  git \
  vimdiff \
  the_silver_searcher \
  python3 \
  neovim \
  neovim-doc \
  fzf \
  openssh-client

apk add --update --no-cache --virtual build-deps \
  build-base \
  curl \
  python3-dev

pip3 install neovim

curl \
  --create-dirs \
  -LSso $VIMPLUG_FILE \
  $VIMPLUG_URL

apk del build-deps

