#!/bin/sh

usermod -u "${UID}" neovim
groupmod -g "${GID}" neovim

TARGET=$(ls | head -n 1)

resize > /dev/null

if [ -f "$TARGET" ]; then
    su-exec neovim nvim $TARGET
elif [ -d "$TARGET" ]; then
    cd $TARGET
    su-exec neovim nvim
else
    su-exec neovim nvim
fi

