export BREW_PREFIX=/usr/local/opt

source ~/dotfiles/prompt.sh

export RSYNC_RSH="ssh"

export EDITOR=vi

alias rsync='rsync -v --progress --partial'

alias less="less -R"

export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;32'

 # Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="/usr/local/bin:$PATH" # Ensure homebrew takes precedence over system


export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/mball0001/.boot2docker/certs/boot2docker-vm
