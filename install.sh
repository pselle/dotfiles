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

ln -s "${DOTFILES}/zshrc" "${HOME}/.zshrc"
ln -s "${DOTFILES}/oh-my-zsh/themes/mdb.zsh-theme" "${HOME}/.oh-my-zsh/themes/mdb.zsh-theme"
ln -s "${DOTFILES}/gitconfig" "${HOME}/.gitconfig"

