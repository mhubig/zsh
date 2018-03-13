#!/usr/bin/env zsh

# Check if zplug is installed
if [[ ! -d ~/.zplug ]]; then
  git clone https://github.com/zplug/zplug ~/.zplug
  source ~/.zplug/init.zsh && zplug update --self
else
  source ~/.zplug/init.zsh
fi

zplug "mafredri/zsh-async", from:github, defer:0
zplug "lib/completion", from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"
zplug "yous/lime"

# Actually install plugins, prompt user input
if ! zplug check --verbose; then
  printf "Install zplug plugins? [y/N]: "
  if read -q; then
      echo; zplug install
  fi
fi

zplug load

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
# Local completions
#

if [[ -s "$HOME/.zsh/zcompletions" ]]; then
  source ~/.zsh/zcompletions
fi

#
# Local stuff
#

if [[ -s "$HOME/.zsh/zlocal" ]]; then
  source ~/.zsh/zlocal
fi