# history
HISTFILE=~/.zsh/history
HISTSIZE=1000
SAVEHIST=1000

# variables
export EDITOR='mvim -f --nomru -c "au VimLeave * !open -a iTerm"'
export LESSEDIT='mvim ?lm+%lm. %f'
export TERM=xterm-256color

# options
setopt appendhistory autocd extendedglob nomatch notify correct_all
unsetopt beep
bindkey -e

# completition
fpath=(/usr/local/share/zsh-completions $fpath)
zstyle :compinstall filename '/Users/mhubig/.zshrc'
zstyle ':completion:*' menu yes select
autoload -Uz compinit
compinit -d  ~/.zsh/compdump

# git prompt feature
source ~/.zsh/zsh-git-prompt/zshrc.sh
export __GIT_PROMPT_DIR=~/.zsh/zsh-git-prompt
ZSH_THEME_GIT_PROMPT_PREFIX=" "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_SEPARATOR="|"
ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg_bold[magenta]%}"
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[red]%}●"
ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$fg[red]%}✖"
ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[blue]%}✚"
ZSH_THEME_GIT_PROMPT_REMOTE=""
ZSH_THEME_GIT_PROMPT_UNTRACKED="…"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}✔"
__EXECUTED_GIT_COMMAND=1

# git flow completition
source /usr/local/share/zsh/site-functions/git-flow-completion.zsh

# prompt
PROMPT='[%n@%m (%c)$(git_super_status) ]$ '

# aliases
source ~/.zsh/aliases

# functions
source ~/.zsh/functions

# local stuff like AWS Credentials
source ~/.zsh/local
