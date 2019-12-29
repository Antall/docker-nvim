#!/bin/sh
UID="1000"
GID="1000"
UNAME="neovim"
GNAME="neovim"
SHELL="/bin/sh"
VIMPLUG_FILE="/home/neovim/.config/nvim/autoload/plug.vim"
VIMPLUG_URL="https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
ENV_DIR="/home/neovim/.local/share/vendorvenv"
NVIM_PROVIDER_PYLIB="python3_neovim_provider"
PATH="/home/neovim/.local/bin:${PATH}"

apk add --update --no-cache \
  curl \
  shadow \
  sudo \
  su-exec \
  python3 \
  py3-virtualenv \
  vimdiff \
  the_silver_searcher \
  neovim \
  neovim-doc \
  fzf \
  openssh-client \
  ruby \
  nodejs \
  git \
  openjdk8-jre \
  npm

apk add --update --no-cache --virtual build-deps \
  build-base \
  musl-dev \
  python3-dev \
  ruby-dev \
  zlib-dev

addgroup "${GNAME}"
adduser -D -G "${GNAME}" -g "" -s "${SHELL}" "${UNAME}"
echo "${UNAME} ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

sudo -u neovim python3 -m venv "${ENV_DIR}/${NVIM_PROVIDER_PYLIB}"
"${ENV_DIR}/${NVIM_PROVIDER_PYLIB}/bin/pip" install \
  neovim \
  python-language-server \
  cfn-lint

mkdir -p /home/neovim/.config/nvim/
chown -R neovim:neovim /home/neovim/.config/nvim

sudo -u neovim gem install --user-install \
  neovim \
  json \
  irb \
  solargraph

npm install -g \
  neovim

curl \
  --create-dirs \
  -LSso ${VIMPLUG_FILE} \
  ${VIMPLUG_URL}

apk del build-deps

