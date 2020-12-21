################################################################################
# Bash configuation for non-login shells
################################################################################

#---------------------------------------
# Below settings for interractive mode only
#---------------------------------------
[[ $- == *i* ]] || return 0

# Colors
########################################

export CLICOLOR=1

# History
########################################

export HISTCONTROL=ignoredups
export HISTSIZE=10000
export HISTFILESIZE=$HISTSIZE

shopt -s histappend # Append to .bash_history
shopt -s cmdhist    # Squash multiline commands into one line in history
shopt -s histverify # Paste command from history into shell instead of executing it

# Completion
########################################

if ! shopt -oq posix; then
    if which brew > /dev/null && [ -f $(brew --prefix)/etc/bash_completion ]; then
        . $(brew --prefix)/etc/bash_completion
    elif [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi

# Misc
########################################

# Enable "**" pattern
shopt -s globstar

# Support more file types in less
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Aliases
########################################

[ -f ~/.bash/aliases ] && . ~/.bash/aliases

# Visual
########################################

shopt -s checkwinsize # Update $LINES and $COLUMNS after each command

[ -f ~/.bash/prompt ] && . ~/.bash/prompt
