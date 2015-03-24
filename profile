export BREW_PREFIX=/usr/local/opt

source ~/dotfiles/prompt.sh

export RSYNC_RSH="ssh"

export EDITOR=vi
export PATH="~/bin:$PATH"
export PATH="$HOME/Library/Haskell/bin:$PATH"


alias rsync='rsync -v --progress --partial'

alias less="less -R"

export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;32'

 # Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
