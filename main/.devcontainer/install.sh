#!/bin/sh

GITHUB_USERNAME=micmarty
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash

