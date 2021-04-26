export BREW_PREFIX=/usr/local/opt

source ~/dotfiles/prompt.sh

export RSYNC_RSH="ssh"

export EDITOR=vi
export PATH="~/bin:$PATH"

alias rsync='rsync -v --progress --partial'
alias less="less -R"

alias ll="ls -la"

export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;32'
export PATH="/usr/local/go/bin:${PATH}"
export GOPATH=$(go env GOPATH)
export PATH="$PATH:$GOPATH/bin"

# Setting PATH for Python 3.7
# The original version is saved in .profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
#export PATH
#export PATH="/Users/pamselle/Library/Python/3.7/bin:${PATH}"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/pamselle/Projects/google-cloud-sdk/path.bash.inc' ]; then . '/Users/pamselle/Projects/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/pamselle/Projects/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/pamselle/Projects/google-cloud-sdk/completion.bash.inc'; fi

export GOOGLE_CLOUD_KEYFILE="/Users/pamselle/pam-gcp-c54319a6f871.json"
export PATH=$PATH:~/.npm-global/bin
