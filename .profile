################################################################################
# Configuration for login shells
################################################################################

# PATH
########################################

# Add composer binaries
[ -d "$HOME/.composer/vendor/bin" ] && export PATH="$HOME/.composer/vendor/bin:$PATH"

# Add user binaries to path
[ -d "$HOME/bin" ] && export PATH="$HOME/bin:$PATH"

# Environment
########################################

export EDITOR="vim"

# Bash
########################################

if [ -n "$BASH_VERSION" ]; then
    # .bashrc is not read automatically, include it
    [ -f "$HOME/.bashrc" ] && . "$HOME/.bashrc"
fi
