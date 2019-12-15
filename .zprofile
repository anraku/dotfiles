# anyenv setting
eval "$(anyenv init -)"

# golang path setting
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

# goenv setting
export PATH=.anyenv/envs/goenv/bin/goenv:$PATH
 # nodenv setting
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

# pyenvv path setting
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# direnv setting
eval "$(direnv hook zsh)"

# alias command list
alias ls='ls -G'
alias ll='ls -alhG'
alias dp='docker-compose ps'
alias doc='docker-compose'

alias gs='git status'
alias gb='git  branch'
alias gore='gore -autoimport'

# The next line updates PATH for the Google Cloud SDK.
#if [ -f '/Users/anraku/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/anraku/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
#if [ -f '/Users/anraku/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/anraku/Downloads/google-cloud-sdk/completion.bash.inc'; fi

#test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

