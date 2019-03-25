#!/bin/bash

DOTFILES=${HOME}/dotfiles

# Move default bashrc out of the way
mv ${HOME}/.bashrc ${HOME}/.bashrc.bak 2>/dev/null

# ln -s ${DOTFILES}/bash_profile ${HOME}/.bash_profile
# ln -s ${DOTFILES}/bashrc ${HOME}/.bashrc
ln -s ${DOTFILES}/profile ${HOME}/.profile
ln -s ${DOTFILES}/gitconfig ${HOME}/.gitconfig
ln -s ${DOTFILES}/bin ${HOME}/bin

