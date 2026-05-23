# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Homebrew init (Apple Silicon / ARM)
if [ -x /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
  [[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"
fi

# All important environment variables
if [ -f "$HOME/.env" ]; then
  set -o allexport
  source "$HOME/.env"
  set +o allexport
fi

# Alias definitions
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


export CLICOLOR=1
# Colors for Dark Terminal Themes
export LSCOLORS=GxFxCxDxBxegedabagaced

export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@3/lib/pkgconfig:/opt/homebrew/opt/readline/lib/pkgconfig:/opt/homebrew/opt/zlib/lib/pkgconfig"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="/opt/homebrew/bin"\
:"/opt/homebrew/opt/llvm/bin"\
:"/opt/homebrew/opt/curl/bin"\
:"/opt/homebrew/opt/libpcap/bin"\
:"/opt/homebrew/opt/python@3.13/libexec/bin"\
:"/opt/homebrew/opt/make/libexec/gnubin"\
:"/Applications/Sublime Text.app/Contents/SharedSupport/bin"\
:"$HOME/.rbenv/bin"\
:"$PYENV_ROOT/bin"\
:"$PATH"

# My multi line prompt
PS1='\u@\h: ${PWD}\n\$ '

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ---- Ruby dev setup -------------------------
eval "$(rbenv init - --no-rehash bash)"

# ---- Python dev setup -----------------------
# --path only if terminal emulator starts login shell
if [[ "$-" == *l* ]]; then
  eval "$(pyenv init --path)"
fi

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

