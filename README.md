# Docker-nvim

Neovim in a docker container.

## Installation

```bash
docker-compose build
```

## Start

### From docker command

```bash
docker run \
  --rm \
  -it \
  -v "<path/to/target>:/root/workdir/<target-name>" \
  "<image-name>"
```

## Plugins

To add plugins, add plugins to `custom/plugins.vim`

## Tips

- To be able to start nvim via the command `nvim`, an alias is the best:

```bash
alias nvim='/path/to/nvim.sh'
```

