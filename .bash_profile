# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs
export QT_STYLE_OVERRIDE=kvantum
export EDITOR="emacsclient -t -a ''"
export VISUAL="emacsclient -c -a emacs"

