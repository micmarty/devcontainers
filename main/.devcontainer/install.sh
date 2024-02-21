#!/bin/bash

GITHUB_USERNAME=micmarty
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
chezmoi init --apply $GITHUB_USERNAME --verbose
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
curl -s https://ohmyposh.dev/install.sh | bash -s -- -d ~/.local/bin
oh-my-posh font install Meslo
neofetch

