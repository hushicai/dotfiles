export EDITOR=vi

# yarn
export PATH=$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH

# android
export JAVA_HOME=`/usr/libexec/java_home`
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$JAVA_HOME/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$HOME/flutter/bin:$PATH

# ruby
export PATH=/usr/local/opt/ruby/bin:$PATH
if which ruby >/dev/null && which gem >/dev/null; then
    PATH="$(ruby -r rubygems -e 'puts Gem.user_dir')/bin:$(ruby -r rubygems -e 'puts Gem.dir')/bin:$PATH"
fi

# fzf
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow'

# depot_tools
export PATH=$HOME/depot_tools:$PATH
