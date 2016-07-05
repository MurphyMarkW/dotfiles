# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

alias v='vim'
alias vim='nvim'

export GOPATH=$HOME/src/go

# Source any secrets...
source .secrets
