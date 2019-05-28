#!/bin/sh
set -e

# vim
rm -f ~/.vimrc
rm -f ~/.config/nvim/init.vim

# ideaVim
rm -f ~/.ideavimrc

# xvim
rm -f ~/.xvimrc

# zsh
rm -f ~/.zshrc
if [ -e ~/.oh-my-zsh ]; then
    rm -rf ~/.oh-my-zsh/custom
fi

# vscode
rm -f ~/Library/Application\ Support/Code/User/settings.json
lm -f ~/Library/Application\ Support/Code/User/keybindings.json

echo "Removed the dotfiles successfully!"
