# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# homebrew init
eval "$(/opt/homebrew/bin/brew shellenv)"

# Alias definitions
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Colors for Dark Terminal Themes:
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-10.jdk/Contents/Home
export RUBY_HOME=~/.rbenv/versions/$(cat ~/.rbenv/version)/bin
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
export LD_LIBRARY_PATH=/usr/local/lib
export NODE_PATH='/usr/local/lib/node_modules'
export PATH="/opt/homebrew/opt/curl/bin:$PATH"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export PATH="/opt/homebrew/opt/libpcap/bin:$PATH"
export PATH="/opt/homebrew/opt/python/libexec/bin:$PATH"
export PATH="~/Projekte/webdriver:$PATH" # <= for selenium webdriver
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"
export PATH=$RUBY_HOME:/usr/local/opt:/usr/local/bin:$PATH

# my multi-line prompt
PS1='\u@\h: $PWD\n\$ '

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[ -f /usr/local/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.bash ] && . /usr/local/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# load ruby environment
eval "$(rbenv init -)"
