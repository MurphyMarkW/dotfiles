# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Load custom prompt...
autoload -Uz promptinit

promptinit
prompt sorin

# Set a bunch of aliases...
alias v='vim'
alias vim='nvim'

# z directory usage tracking, because it's awesome.
source /usr/local/etc/profile.d/z.sh

# Google Cloud SDK
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'

# Go exports...
export GOPATH=$HOME/src/go
export PATH=$PATH:$GOPATH/bin

# Rust exports...
source $HOME/.cargo/env
export RUST_SRC_PATH=$HOME/src/rust/rust/src

# And finally, source any secrets.
source $HOME/.secrets
