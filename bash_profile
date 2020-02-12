export CLICOLOR=1
export EDITOR=nvim

# export GO111MODULE=on
export GOPATH=$HOME/go 

PATH=$PATH:/usr/local/bin
PATH=$PATH:/usr/local/sbin
PATH=$PATH:$HOME/go/bin
PATH=$PATH:$HOME/.cargo/bin
PATH=$PATH:$HOME/bin
export PATH

alias vi="nvim"
alias cat="bat -p"
alias ldd="otool -L"
alias ls="exa"
alias sed="gsed"

[[ -r $HOME/.bash_prompt ]] && . "$HOME/.bash_prompt"

# http://jesrui.sdf-eu.org/remember-all-your-bash-history-forever.html
# HISTTIMEFORMAT='%F %T '
# HISTFILESIZE=-1
# HISTSIZE=-1
# HISTCONTROL=ignoredups
# HISTIGNORE=?:??
# shopt -s histappend
# shopt -s cmdhist
# shopt -s lithist
# export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
