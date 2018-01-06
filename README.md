# dotfiles

My [yadm][yadm] managed configuration/dot files.

## Motivation
Just to have a tool that helps maintain a single repository of all my dotfiles, while keeping them in the `$HOME`- directory.

## Setup

### MacOS
```
# Install Homebrew + yadm
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ brew install yadm

# Update bash
$ brew install bash
$ sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'
$ chsh -s /usr/local/bin/bash

$ cd $HOME
$ yadm clone git@github.com:casi/dotfiles
$ source ~/.bashrc
```

### Linux
```
~$ sudo apt install yadm
~$ cd $HOME
~$ yadm clone git@github.com:casi/dotfiles
~$ source ~/.bashrc
```

[yadm]: https://github.com/TheLocehiliosan/yadm
