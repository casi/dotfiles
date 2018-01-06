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

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_121.jdk/Contents/Home
export PATH=/usr/local/bin:$PATH
export RUBY_HOME=/Users/carsten/.rvm/rubies/ruby-2.4.2/bin
export PATH="$PATH:`yarn global bin`"
export PATH="/usr/local/opt/sqlite/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# my multi-line prompt
PS1='\u@\h: $PWD
\$ '

# Load the default .profile
#[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" 

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion