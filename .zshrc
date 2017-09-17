# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Set a bunch of aliases...
alias e='vi'
alias vi='vim'
alias vim='nvim'
alias top='htop'

# z directory usage tracking, because it's awesome.
source /usr/local/etc/profile.d/z.sh

# Homebrew-installed paths.
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Google Cloud SDK
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'

# Go exports...
export GOPATH=$HOME/src/go
export PATH=$PATH:$GOPATH/bin

# Rust exports...
source $HOME/.cargo/env
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"

# Android exports...
export PATH=$PATH:$HOME/Library/Android/sdk/platform-tools

# And finally, source any secrets.
source $HOME/.secrets

# added by travis gem
[ -f /Users/mark/.travis/travis.sh ] && source /Users/mark/.travis/travis.sh
