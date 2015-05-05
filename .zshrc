export BREW_PREFIX=/usr/local/opt

source ~/dotfiles/prompt.sh
source ~/dotfiles/jdk.sh

export RSYNC_RSH="ssh"
export EDITOR=vi

alias rsync='rsync -v --progress --partial'
alias less="less -R"

export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;32'

# Docker
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/mball0001/.boot2docker/certs/boot2docker-vm
export PATH="$HOME/.bin:$PATH"

# recommended by brew doctor
export PATH="/usr/local/bin:$PATH"
eval "$(rbenv init - zsh --no-rehash)"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
