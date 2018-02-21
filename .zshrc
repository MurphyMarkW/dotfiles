# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Set a bunch of aliases...
alias vi='vim'
alias vim='nvim'
alias top='htop'

# Redefine a bunch of aliases for ls -> exa.
alias ls='exa'
alias l='exa -1'
alias la='ll'
alias lt='ll --modified'
alias lu='ll --accessed'
alias lk='ll -rs name'
alias lc='lt'


# z directory usage tracking, because it's awesome.
source $HOME/.local/z/z.sh

# Go exports...
export GOPATH=$HOME/src/go
export PATH=$PATH:$GOPATH/bin

# Rust exports...
source $HOME/.cargo/env
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"

# Android exports...
export PATH=$PATH:$HOME/Library/Android/sdk/platform-tools

# And finally, source any secrets.
source $HOME/.secrets || true

# added by travis gem
[ -f /Users/mark/.travis/travis.sh ] && source /Users/mark/.travis/travis.sh
