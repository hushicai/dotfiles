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

#jetbrains
android_studio_path=`find ~/Library/Preferences/ -name "AndroidStudio*"`
if [[ -d $android_studio_path && -d $android_studio_path/options ]]; then
    ln -sf ~/dotfiles/jetbrains/vim_settings.xml $android_studio_path/options/vim_settings.xml;
fi
clion_path=`find ~/library/preferences/ -name "clion*" | head -n 1`
if [[ -d $clion_path && -d $clion_path/options ]]; then
    ln -sf ~/dotfiles/jetbrains/vim_settings.xml $clion_path/options/vim_settings.xml;
fi

echo "Installed the dotfiles successfully!"
