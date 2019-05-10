#!/bin/sh
set -e

# vim
rm -f ~/.vimrc
rm -f ~/.config/nvim/init.vim

# zsh
rm -f ~/.zshrc
if [ -e ~/.oh-my-zsh ]; then
    rm -rf ~/.oh-my-zsh/custom
fi

echo "Removed the dotfiles successfully!"
