# vimrc

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

- zsh plugins not wroking?

  > rm ~/.zcompdump\*

- ideaVim key mappings not work?

  > checkout Android Studio `Editor -> Vim Emulation`, this is all the conflict shortcuts, change the handler to vim, now the key mappings should work.

## references

- [vim-galore](https://github.com/mhinz/vim-galore)
- [keith/dotfiles](https://github.com/keith/dotfiles)