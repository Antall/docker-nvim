#!/bin/bash

IMAGE_NAME="avim"

if [ "$(uname)" == "Darwin" ]; then
  realpath() {
    [[ $1 = /* ]] && echo "$1" || echo "$PWD/${1#./}"
  }
fi

while [ $# -gt 0 ]; do
  param="$1"

  case $param in
    -n|--image-name)
    IMAGE_NAME="$2"
    shift
    ;;

    *)
    TARGET="$param"
    ;;
  esac
  shift
done

TARGET=${TARGET:=.}
TARGET_PATH=$(realpath $TARGET)
TARGET_NAME=$(basename $TARGET_PATH)

docker run \
  --rm \
  -it \
  -v "$TARGET_PATH:/home/neovim/workdir/$TARGET_NAME" \
  -v "$HOME/.ssh:/root/.ssh:ro" \
  "$IMAGE_NAME"

