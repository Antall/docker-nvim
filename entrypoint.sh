#!/bin/sh

TARGET=$(ls | head -n 1)
ENV_DIR="/home/neovim/.local/share/vendorvenv"
NVIM_PROVIDER_PYLIB="python3_neovim_provider"

resize > /dev/null

source "${ENV_DIR}/${NVIM_PROVIDER_PYLIB}/bin/activate"

if [ -f "$TARGET" ]; then
    nvim $TARGET
elif [ -d "$TARGET" ]; then
    cd $TARGET
    nvim
else
    nvim
fi

