system_type=$(uname -s)
if [ "$system_type" == "Darwin" ]; then
  alias ls='ls -G';
  # brew upgrade
  alias bup='brew update && brew upgrade'
  # all installed bottles
  alias brewl='brew leaves'
fi

# Reload bashrc file
alias bashreload='source ~/.bashrc && echo Bash config reloaded'

# Directory listings
alias ll='ls -lah'
alias llp='ll --color=always | grep --color=never'

# grep modifications
alias grep='grep --color=auto'
alias grepp='grep -P --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# delete all .DS_Store files from the file system
alias delds='find ./ -iname .DS_Store -delete'

# Edit hosts file via nano
alias hosts='vim /etc/hosts'

# Print disk usage human readable
alias d='du -sh'
# Displays drives and space human readable
alias drives='df -h'

# Clear screen
alias c='clear'
alias cl='clear;ls;pwd'

# SSH helper
alias sshclear='rm ~/.ssh/multiplex/* -f && echo SSH connection cache cleared;'
alias sshlist='echo Currently open ssh connections && echo && l ~/.ssh/multiplex/'

# Limits ping to five ECHO_REQUEST packets
alias ping='ping -c 5'

# Start redis server NOT as background service
alias redis='redis-server /usr/local/etc/redis.conf'

# Docker stuff
# Clean stopped containers
alias cco="docker ps -a | grep \"Exited\" | awk '{print $1}' | xargs docker rm"
# clean unused images to reclaim disk space
alias cimg="docker images | grep none | awk '{print \$3}' | xargs docker rmi"
alias dps='docker ps -a'
alias di='docker images'
alias drmi='docker rmi'
alias drm='docker rm'
alias dcompstop='docker-compose stop'
alias dcompup='docker-compose up -d'
alias dcomprm='docker-compose rm --all'

