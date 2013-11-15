#
# Source Prezto.
#

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

#
# ZSH Settings
#

HISTFILE=~/.zsh/zhistory
HISTSIZE=10000
SAVEHIST=10000

#
# Aliases
#

if [[ -s "${ZDOTDIR:-$HOME}/.zsh/aliases" ]]; then
  source ~/.zsh/zaliases
fi

#
# Functions
#

if [[ -s "${ZDOTDIR:-$HOME}/.zsh/functions" ]]; then
  source ~/.zsh/zfunctions
fi

#
# Local stuff
#

if [[ -s "${ZDOTDIR:-$HOME}/.zsh/local" ]]; then
  source ~/.zsh/zlocal
fi
