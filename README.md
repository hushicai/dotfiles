# vimrc

## dependencies

* [fzf](https://github.com/junegunn/fzf)

```bash
brew install fzf
```
 
* [ripgrep](https://github.com/BurntSushi/ripgrep)

```bash
brew install ripgrep
```

* depot_tools

```bash
git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git ~/depot_toos
```

## install

```bash
git clone --depth=1 https://github.com/hushicai/dotfiles.git ~/dotfiles
sh ~/dotfiles/install.sh
```

## uninstall

```bash
sh ~/dotfiles/uninstall.sh
```

## clean

```bash
rm -rf ~/dotfiles
```

## update

```bash
cd ~/dotfiles
git pull --rebase
```

## QA

* zsh plugins not wroking?

    > rm ~/.zcompdump*

## references

* [vim-galore](https://github.com/mhinz/vim-galore)
