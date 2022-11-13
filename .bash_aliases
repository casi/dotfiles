system_type=$(uname -s)
if [ "$system_type" == "Darwin" ]; then
  alias ls='ls -G';

  # brew upgrade
  alias bup='brew update; brew upgrade; brew upgrade --cask; brew autoremove; brew cleanup'
  # gem update
  alias gup='gem update --system; gem update; gem cleanup'
  # Get macOS Software Updates, update Homebrew and their installed packages and update Ruby Gems and cleanup all
  alias update='sudo softwareupdate -i -a; bup; gup'

  # all installed bottles
  alias brewl='brew leaves'

  # delete all .DS_Store files from the file system
  alias delds='find ./ -iname .DS_Store -delete'

  # Show/hide hidden files in Finder
  alias show='defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder'
  alias hide='defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder'

  # Hide/show all desktop icons (useful when presenting)
  alias hidedesktop='defaults write com.apple.finder CreateDesktop -bool false && killall Finder'
  alias showdesktop='defaults write com.apple.finder CreateDesktop -bool true && killall Finder'

  # Disable Spotlight
  alias spotoff='sudo mdutil -a -i off'
  # Enable Spotlight
  alias spoton='sudo mdutil -a -i on'

  # my fancy little media visualizing tool ;)
  alias media2html='ruby ~/Projekte/Ruby/media2html/media2html.rb'

  # format a USB stick; to find out N: diskutil list
  alias formatusb='diskutil eraseDisk FAT32 UNTITLED MBRFormat /dev/diskN'

  # Start redis server NOT as background service
  alias redis='redis-server /opt/homebrew/etc/redis.conf'

  # Stuff I never really use but cannot delete either because of http://xkcd.com/530/
  alias stfu="osascript -e 'set volume output muted true'"
  alias pumpitup="osascript -e 'set volume output volume 100'"

  # Lock the screen (when going AFK)
  #alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
  alias afk='pmset displaysleepnow'
fi

# Reload bashrc file
alias bashreload='source ~/.bashrc && echo Bash config reloaded'

# Easier navigation: .., ..., ...., ....., ......
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Shortcuts
alias g="git"
alias h="history"
alias j="jobs"
alias o="open"
alias oo="open ."

# Directory listings
alias ll='ls -lah'
alias llp='ll --color=always | grep --color=never'

# grep modifications
alias grep='grep --color=auto'
alias grepp='grep -P --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Get week number
alias week='date +%V'

# Edit hosts file via vim
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
alias drvol='docker system prune --volumes -f'

# dev aliases
alias be='bundle exec'
alias rspecd='be rspec --format d'
