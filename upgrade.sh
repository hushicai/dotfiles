## upgrade oh my zsh
cd ~/.oh-my-zsh
git checkout -- .
cd -
env ZSH=$ZSH sh $ZSH/tools/upgrade.sh

## install
./install.sh
