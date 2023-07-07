#!/usr/bin/env bash

echo "Dotfiles-ing..."

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --keep-zshrc

export SHELL=zsh

echo "Testing Atuin for persisted terminal history"

bash <(curl https://raw.githubusercontent.com/ellie/atuin/main/install.sh)
atuin login -u "$ATUIN_USERNAME" -p $ATUIN_PASSWORD --key "$ATUIN_KEY"
atuin sync