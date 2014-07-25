export GOPATH=$HOME/.go
export GOROOT=/usr/local/go
export PATH=$GOPATH/bin:$PATH

alias ls="ls -G"

eval "$(direnv hook bash)"
