# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

alias v='vim'
alias vim='nvim'

# Golang exports.
export GOPATH=$HOME/src/go
export PATH=$PATH:$GOPATH/bin

# Source any secrets...
source .secrets
