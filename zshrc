#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#   Markus Hubig <mhubig@gmail.com>
#

#
# Source and config zgen
#

if [[ -s "${HOME}/.zgen/zgen.zsh" ]]; then

  source "${HOME}/.zgen/zgen.zsh"

  if ! zgen saved; then
    echo "Creating a zgen save"

    # prezto options
    zgen prezto '*:*' color 'yes'
    zgen prezto editor key-bindings 'emacs'
    zgen prezto prompt theme 'sorin'
    zgen prezto terminal auto-title 'yes'
    zgen prezto syntax-highlighting highlighters \
      'main' \
      'brackets' \
      'pattern' \
      'cursor' \
      'root'

    # prezto and modules
    zgen prezto
    zgen prezto environment
    zgen prezto terminal
    zgen prezto editor
    zgen prezto history
    zgen prezto directory
    zgen prezto spectrum
    zgen prezto utility
    zgen prezto completion
    zgen prezto prompt
    zgen prezto git
    zgen prezto osx
    zgen prezto command-not-found
    zgen prezto syntax-highlighting

    zgen save
  fi

fi

#
# ZSH Settings
#

unsetopt sharehistory

#
# Aliases
#

if [[ -s "$HOME/.zsh/zaliases" ]]; then
  source ~/.zsh/zaliases
fi

#
# Functions
#

if [[ -s "$HOME/.zsh/zfunctions" ]]; then
  source ~/.zsh/zfunctions
fi

#
# Local stuff
#

if [[ -s "$HOME/.zsh/zlocal" ]]; then
  source ~/.zsh/zlocal
fi

