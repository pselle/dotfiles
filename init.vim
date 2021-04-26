" use standard ~/.vimrc and ~/.vim config dir with nvim
" rather than ~/.config/nvim.
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
