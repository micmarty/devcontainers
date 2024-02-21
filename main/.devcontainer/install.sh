#!/bin/sh

GITHUB_USERNAME=micmarty
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME
