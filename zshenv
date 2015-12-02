# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#   Markus Hubig <mhubig@gmail.com>
#

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

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
  $HOME/bin
  $GOPATH/bin
  /usr/local/opt/ruby/bin
  /usr/local/bin
  /usr/bin
  /bin
  /usr/local/sbin
  /usr/sbin
  /sbin
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
export LESSEDIT='mvim ?lm+%lm. %f'

# Set the Less input preprocessor.
if (( $+commands[lesspipe.sh] )); then
  export LESSOPEN='| /usr/bin/env lesspipe.sh %s 2>&-'
fi

#
# Editor
#
if [[ "$OSTYPE" == darwin* ]]; then
  export EDITOR='mvim -f --nomru -c "au VimLeave * !open -a iTerm"'
  export VISUAL='mvim -f --nomru -c "au VimLeave * !open -a iTerm"'
  export PAGER='less'
fi

#
# Browser
#
if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
fi

#
# VM Stuff
#
#eval "$(docker-machine env dev)"
export DOCKER_TLS_VERIFY="1"
export DOCKER_HOST="tcp://192.168.99.100:2376"
export DOCKER_CERT_PATH="/Users/markus/.docker/machine/machines/dev"
export DOCKER_MACHINE_NAME="dev"

#
# Homebrew setings
#
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export HOMEBREW_GITHUB_API_TOKEN=a0d5676a2627a9fcdf7ed053b5623dd17e507c55

#
# Ansible stuff
#
export ANSIBLE_CONFIG=ansible.cfg
export ANSIBLE_HOSTS=hosts

