#!/bin/sh
set -e

cd ~/dotfiles

# (neo)vim
mkdir -p ~/.config/nvim
ln -sf ~/dotfiles/vimrc ~/.vimrc
ln -sf ~/dotfiles/vimrc ~/.config/nvim/init.vim

# ideavim
ln -sf ~/dotfiles/ideavimrc ~/.ideavimrc

# xcode
ln -sf ~/dotfiles/xvimrc ~/.xvimrc

# zsh
ln -sf ~/dotfiles/zshrc ~/.zshrc
if [ -d ~/.oh-my-zsh ]; then
    rm -rf ~/.oh-my-zsh/custom
    ln -s ~/dotfiles/zsh ~/.oh-my-zsh/custom
fi

# vscode
mkdir -p ~/Library/Application\ Support/Code/User
ln -sf ~/dotfiles/vscode/settings.json  ~/Library/Application\ Support/Code/User/settings.json
ln -sf ~/dotfiles/vscode/keybindings.json  ~/Library/Application\ Support/Code/User/keybindings.json

echo "Installed the dotfiles successfully!"
