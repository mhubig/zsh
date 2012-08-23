# Setting the PATH Variable
path=(~/bin(N-/))
path+=/usr/local/bin
path+=/usr/bin
path+=/bin
path+=/usr/local/sbin
path+=/usr/sbin
path+=/sbin
path+=/usr/texbin
path+=/usr/local/share/python

# Setting the PYTHONPATH and PYTHONSTARTUP
PYTHONPATH=/usr/local/lib/python:$PYTHONPATH
PYTHONPATH=/usr/local/lib/python2.7:$PYTHONPATH
PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
PYTHONPATH=/usr/local/lib/python2.7/site_packages:$PYTHONPATH
export PYTHONPATH
export PYTHONSTARTUP=~/.pythonrc

# OSFontDir for Context
OSFONTDIR=/System/Library/Fonts
OSFONTDIR=/Library/Fonts:$OSFONTDIR
OSFONTDIR=~/Library/Fonts:$OSFONTDIR
OSFONTDIR=/usr/local/context/tex/texmf/fonts:$OSFONTDIR
OSFONTDIR=/usr/local/texlive/texmf-local/fonts:$OSFONTDIR
OSFONTDIR=/usr/local/texlive/2012/texmf/fonts:$OSFONTDIR
export OSFONTDIR
