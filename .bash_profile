# Colors for Dark Terminal Themes:
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_102.jdk/Contents/Home
export PATH=/usr/local/bin:$PATH
export RUBY_HOME=/Users/carsten/.rvm/rubies/ruby-2.3.1/bin

# my multi-line prompt
PS1='\u@\h: $PWD
\$ '

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
