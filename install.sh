#!/usr/bin/env bash
#
# install.sh - copy all dotfiles to $HOME directory
#

shopt -s extglob
shopt -s dotglob

cd $(dirname $BASH_SOURCE) && \
cp -i -R \
   !(install.sh|.git|.gitmodules|..|.) \
   $HOME
