#!/bin/sh
set -e

cd ~/dotfiles

# (neo)vim
mkdir -p ~/.config/nvim
ln -sf ~/dotfiles/vimrc ~/.vimrc
ln -sf ~/dotfiles/vimrc ~/.config/nvim/init.vim

# zsh
ln -sf ~/dotfiles/zshrc ~/.zshrc
if [ -d ~/.oh-my-zsh ]; then
    rm -rf ~/.oh-my-zsh/custom
    ln -s ~/dotfiles/zsh ~/.oh-my-zsh/custom
fi

echo "Installed the dotfiles successfully!"
