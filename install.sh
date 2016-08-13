#!/bin/bash

DOTFILES=${HOME}/dotfiles

# Move default bashrc out of the way
mv ${HOME}/.bashrc ${HOME}/.bashrc.bak 2>/dev/null

ln -s ${DOTFILES}/zshrc ${HOME}/.zshrc
ln -s ${DOTFILES}/oh-my-zsh/themes/mdb.zsh-theme ${HOME}/.oh-my-zsh/themes/mdb.zsh-theme
ln -s ${DOTFILES}/tmux.conf ${HOME}/.tmux.conf
ln -s ${DOTFILES}/gitconfig ${HOME}/.gitconfig
ln -s ${DOTFILES}/vimrc ${HOME}/.vimrc
ln -s ${DOTFILES}/jshintrc ${HOME}/.jshintrc

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim +PlugInstall +qall
vim +GoInstallBinaries +qall
vim +GoUpdateBinaries +qall
