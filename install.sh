#!/usr/bin/env bash

echo "Dotfiles-ing..."

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --keep-zshrc

export SHELL=zsh