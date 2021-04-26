#!/bin/bash

# Install homebrew if it's not already installed.
# This should be compared to the latest installation
# instructions at https://brew.sh before executing.
if ! command -v brew &> /dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew bundle

if [ ! -d "${HOME}/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

mv "${HOME}/.bashrc" "${HOME}/.bashrc.bak" 2>/dev/null
mv "${HOME}/.zshrc" "${HOME}/.zshrc.bak" 2>/dev/null

DOTFILES=${HOME}/dotfiles

if [ ! -d "${HOME}/.config/nvim" ]; then
  mkdir -p "${HOME}/.config/nvim";
fi

ln -s "${DOTFILES}/zshrc" "${HOME}/.zshrc"
ln -s "${DOTFILES}/oh-my-zsh/themes/mdb.zsh-theme" "${HOME}/.oh-my-zsh/themes/mdb.zsh-theme"
# ln -s "${DOTFILES}/tmux.conf" "${HOME}/.tmux.conf"
ln -s "${DOTFILES}/gitconfig" "${HOME}/.gitconfig"
# ln -s "${DOTFILES}/vimrc" "${HOME}/.vimrc"
# ln -s "${DOTFILES}/jshintrc" "${HOME}/.jshintrc"
# ln -s "${DOTFILES}/init.vim" "${HOME}/.config/nvim/init.vim"

if [ ! -d "${HOME}/bin" ]; then
  mkdir -p "${HOME}/bin";
fi

ln -s "${DOTFILES}/aliases" "${HOME}/bin/aliases"

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim +PlugInstall +qall
vim +GoInstallBinaries +qall
vim +GoUpdateBinaries +qall
