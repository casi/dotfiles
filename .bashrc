# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Alias definitions
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Colors for Dark Terminal Themes:
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-10.jdk/Contents/Home
export RUBY_HOME=/Users/carsten/.rbenv/versions/2.7.2/bin
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
export LD_LIBRARY_PATH=/usr/local/lib
export NODE_PATH='/usr/local/lib/node_modules'
export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="/usr/local/opt/libpcap/bin:$PATH"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="/Users/carsten/Projekte/webdriver:$PATH" # <= for selenium webdriver
export PATH=$RUBY_HOME:/usr/local/opt:/usr/local/bin:$PATH

# my multi-line prompt
PS1='\u@\h: $PWD
\$ '

# Load the default .profile
#[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# load ruby environment
eval "$(rbenv init -)"

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[ -f /usr/local/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.bash ] && . /usr/local/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# heroku autocomplete setup
HEROKU_AC_BASH_SETUP_PATH=/Users/carsten/Library/Caches/heroku/autocomplete/bash_setup && test -f $HEROKU_AC_BASH_SETUP_PATH && source $HEROKU_AC_BASH_SETUP_PATH;

# init bash history tool
if [ -r /usr/local/opt/mcfly/mcfly.bash ]; then
  . /usr/local/opt/mcfly/mcfly.bash
fi

