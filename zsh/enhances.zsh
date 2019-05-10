# https://github.com/junegunn/fzf/issues/467
fzf-history-widget-accept() {
  fzf-history-widget
  zle accept-line
}
zle     -N   fzf-history-widget-accept
bindkey '^R' fzf-history-widget-accept
