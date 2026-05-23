# ---- macOS related Aliases ------------------------------------------------------
if [[ "$(uname)" == "Darwin" ]]; then
  alias ls='ls -G';

  # brew upgrade
  alias bup='brew update; brew upgrade; brew upgrade --cask; brew autoremove; brew cleanup'
  # gem update
  alias gup='gem update --system; gem update' #; gem cleanup'
  # Mac Apps installed from the Mac Appstore
  alias mac='mas upgrade'
  # Get macOS Software Updates, update Homebrew and their installed packages and update Ruby Gems and cleanup all
  # alias update='sudo softwareupdate -i -a; mac; bup; gup'
  alias update='bup; mac; gup; rbenv update; pyenv update'
  alias updateos='sudo softwareupdate -i -a;'

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
  # my age calculator
  alias howold='python ~/Projekte/Python/howold/howold.py'
  alias counter='cd ~/Projekte/Python/crewcall_counter; python counter.py'

  # format a USB stick; to find out N: diskutil list
  alias formatusb='echo "⚠️  Run with caution! Example: diskutil list -> diskutil eraseDisk FAT32 UNTITLED MBRFormat /dev/diskN"'

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

# grep modifications
alias grep='grep --color=auto'
alias grepp='grep -P --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

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

# Git shortcuts
alias gs='git status -sb'
alias gc='git commit -m'
alias ga='git add .'
alias gl='git log --oneline --decorate --graph --all'

# ---- Docker stuff ---------------------------------------------------------------------
# Clean stopped containers
alias cco="docker ps -a | grep \"Exited\" | awk '{print $1}' | xargs -r docker rm"

# clean unused images to reclaim disk space
docker-clean-images() {
  echo "Removing all dangling Docker images..."
  docker images -f "dangling=true" -q | xargs -r docker rmi
}
alias cimg='docker-clean-images'

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

# ---- yt-dlp shortcuts ----------------------------------------------------------------
# yt-dlp: MP4 Download for conversion to an Insta story
alias ytstory='yt-dlp --merge-output-format mp4 -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]"'
# yt-dlp: Convert to Insta story, only first 60s
alias ytstory60='yt-dlp --merge-output-format mp4 -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]" --download-sections "*0:00-0:60"'
# ffmpeg: Crop to 9:16
alias crop916='ffmpeg -i input.mp4 -vf "crop=ih*9/16:ih" -c:a copy output_story.mp4'
alias ig-dl='yt-dlp --cookies ~/cookies.txt -o "%(uploader)s_%(upload_date)s_%(id)s.%(ext)s"'

