# Pre-emptively update fpath to point to custom prezto files.
fpath+="$HOME/.dotfiles/zprezto"

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

alias vim='nvim'

export GOPATH=$HOME/src/go

# Source any secrets...
source .secrets
