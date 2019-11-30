source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash

GIT_PS1_SHOWDIRTYSTATE=1
#export PS1='\h\[\033[00m\]:\W\[\033[31m\]$(__git_ps1 [%s])\[\033[00m\]\$ '
export PS1='\W\[\033[31m\]$(__git_ps1 [%s])\[\033[00m\]\$ '

# direnv
eval "$(direnv hook bash)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/anraku/.nodebrew/node/v11.10.1/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /Users/anraku/.nodebrew/node/v11.10.1/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/anraku/.nodebrew/node/v11.10.1/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /Users/anraku/.nodebrew/node/v11.10.1/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /Users/anraku/.nodebrew/node/v11.10.1/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash ] && . /Users/anraku/.nodebrew/node/v11.10.1/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash