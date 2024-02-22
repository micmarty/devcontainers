#!/bin/bash

GITHUB_USERNAME=micmarty
# tmux tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# pyenv
curl https://pyenv.run | bash

# chezmoi dotfiles
chezmoi init --apply $GITHUB_USERNAME --verbose

mkdir -p ~/.local/bin
# bat
ln -s /usr/bin/batcat ~/.local/bin/bat

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all --xdg --no-fish --no-zsh --no-update-rc 

# zoxide
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash

# oh-my-posh
curl -s https://ohmyposh.dev/install.sh | bash -s -- -d ~/.local/bin
oh-my-posh font install Meslo
exit

# tmux new -A -s master -n default bash

