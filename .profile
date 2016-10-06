################################################################################
# Configuration for login shells
################################################################################

# PATH
########################################

# Add user binaries to path
[ -d "$HOME/bin" ] && PATH="$HOME/bin:$PATH"

# Environment
########################################

export EDITOR="vim"

# Bash
########################################

if [ -n "$BASH_VERSION" ]; then
    # .bashrc is not read automatically, include it
    [ -f "$HOME/.bashrc" ] && . "$HOME/.bashrc"
fi
