# Defines environment variables.
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
# Editor
#

if [[ "$OSTYPE" == darwin* ]]; then
  export EDITOR='mvim -f --nomru -c "au VimLeave * !open -a iTerm"'
  export VISUAL='mvim -f --nomru -c "au VimLeave * !open -a iTerm"'
  export PAGER='less'
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
# Browser
#

if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
fi


#
# Development
#

PYTHONPATH=/usr/local/lib/python:$PYTHONPATH
PYTHONPATH=/usr/local/lib/python2.7:$PYTHONPATH
PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
PYTHONPATH=/usr/local/lib/python2.7/site_packages:$PYTHONPATH
export PYTHONPATH

GOPATH=$HOME/Development/go
export GOPATH

SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt
export SSL_CERT_FILE

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
