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
alias ga='git add -p'
alias gc='git commit'
alias gore='gore -autoimport'

# neovim setting
export XDG_CONFIG_HOME=$HOME/.config

# fzf setting
alias f='fzf --preview "bat --style=numbers --color=always --line-range :500 {}"'

# peco setting
alias pcd='cd $(find . -maxdepth 1 -type d | peco)'


# 初回起動時にtmuxを起動
if [[ ! -n $TMUX ]]; then
  # get the IDs
  ID="`tmux list-sessions`"
  if [[ -z "$ID" ]]; then
    tmux new-session
  fi
  create_new_session="Create New Session"
  ID="$ID\n${create_new_session}:"
  ID="`echo $ID | fzf | cut -d: -f1`"
  if [[ "$ID" = "${create_new_session}" ]]; then
    tmux new-session
  elif [[ -n "$ID" ]]; then
    tmux attach-session -t "$ID"
  else
    :  # Start terminal normally
  fi
fi
