# Remove superfluous blanks from each command line being added to the history
# list
setopt histreduceblanks
# Remove command lines from the history list when the first character on the
# line is a space, or when one of the expanded aliases contains a leading space
setopt histignorespace
# ignore dups
# https://github.com/junegunn/fzf/issues/600
setopt histignorealldups
setopt histfindnodups
