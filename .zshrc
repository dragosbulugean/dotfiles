export ZSH=/Users/dragos/.oh-my-zsh
ZSH_THEME="robbyrussell"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git)
source $ZSH/oh-my-zsh.sh

export NVM_DIR="/Users/dragos/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export GOPATH=/Users/dragos/Projects/go
export PATH=$PATH:$GOPATH/bin
export projects=$GOPATH/src/bitbucket.org/dragosbulugean
export aiurlabs=$projects/aiurlabs

