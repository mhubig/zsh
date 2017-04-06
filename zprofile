#!/usr/bin/env zsh
#
# Executes commands at login pre-zshrc.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#   Markus Hubig <mhubig@gmail.com>
#

#
# Terminal
#
if [[ "$OSTYPE" == darwin* ]]; then
  export TERM=xterm-256color
fi

#
# Language
#
if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
  export LC_CTYPE='en_US.UTF-8'
  export LC_ALL='en_US.UTF-8'
fi

#
# Paths
#
typeset -gU cdpath fpath mailpath path

# Set the the list of directories that cd searches.
cdpath=(
  $cdpath
)

# Set the list of directories that Zsh searches for programs.
path=(
  $HOME/.local/bin
  $HOME/Development/go
  $HOME/Library/Android/sdk/platform-tools
  /usr/local/opt/go/libexec/bin
  /usr/local/opt/ruby/bin
  /usr/local/{bin,sbin}
  /usr/{bin,sbin}
  /{bin,sbin}
  /usr/texbin
)

#
# Temporary Files
#

if [[ ! -d "$TMPDIR" ]]; then
  export TMPDIR="/tmp/$USER"
  mkdir -p -m 700 "$TMPDIR"
fi

TMPPREFIX="${TMPDIR%/}/zsh"
if [[ ! -d "$TMPPREFIX" ]]; then
  mkdir -p "$TMPPREFIX"
fi

#
# Less
#
# Set the default Less options.
# Mouse-wheel scrolling has been disabled by -X (disable screen clearing).
# Remove -X and -F (exit if the content fits on one screen) to enable it.
export LESS='-F -g -i -M -R -S -w -X -z-4'
export LESSEDIT='vim ?lm+%lm. %f'

# Set the Less input preprocessor.
if (( $+commands[lesspipe.sh] )); then
  export LESSOPEN='| /usr/bin/env lesspipe.sh %s 2>&-'
fi

#
# Editor
#
if [[ "$OSTYPE" == darwin* ]]; then
  export EDITOR='code -n'
  export VISUAL='code -n'
  export PAGER='less'
fi

#
# Browser
#
if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
fi

#
# Homebrew setings
#
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

#
# Ansible stuff
#
export ANSIBLE_CONFIG=ansible.cfg
export ANSIBLE_HOSTS=hosts

#
# Go
#
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/Development/go

#
# Python stuff
#
export CFLAGS="-I$(brew --prefix openssl)/include"
export LDFLAGS="-L$(brew --prefix openssl)/lib"

# Load pyenv automatically
export PYENV_ROOT=/usr/local/var/pyenv
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

if which pyenv > /dev/null; then
    eval "$(pyenv init -)";
fi

#
# Direnv
#

if which direnv > /dev/null; then
    eval "$(direnv hook zsh)";
fi
