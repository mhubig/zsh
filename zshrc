#
# Source Prezto.
#

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

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
