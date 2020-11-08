export LANG=ja_JP.UTF-8
# anyenv setting
eval "$(anyenv init -)"

# golang path setting
export PATH=$GOPATH/bin:$PATH

# rust setting
export PATH=$HOME/.cargo/bin:$PATH

# goenv setting
export PATH=.anyenv/envs/goenv/bin/goenv:$PATH
 # nodenv setting
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

# pyenvv path setting
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
# pip library path
export PATH="$HOME/.local/bin:$PATH"

# direnv setting
eval "$(direnv hook zsh)"

# alias command list
alias vim='nvim'

alias ls='ls -G'
alias ll='ls -alhG'
alias dp='docker-compose ps'
alias doc='docker-compose'

alias gs='git status'
alias gb='git  branch'
alias gore='gore -autoimport'

# stats covid-19
alias cov='curl https://corona-stats.online/Japan'

# neovim setting
export XDG_CONFIG_HOME=$HOME/.config
