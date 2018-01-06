system_type=$(uname -s)
if [ "$system_type" == "Darwin" ]; then
  alias ls='ls -G';
fi

alias ll='ls -lah'
alias llp='ll --color=always | grep --color=never'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias hosts='nano /etc/hosts'

