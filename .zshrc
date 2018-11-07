# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Set a bunch of aliases...
alias edit='e'
alias e='vi'
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
source /usr/local/etc/profile.d/z.sh

# Homebrew-installed paths.
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# To allow GNUPG to query for passwords.
export GPG_TTY=$(tty)

# Go exports...
export GOPATH=$HOME/src/go
export PATH=$PATH:$GOPATH/bin

# Rust exports...
source $HOME/.cargo/env
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"

# Android exports...
export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"
export ANDROID_NDK_HOME="/usr/local/share/android-ndk"
export ANDROID_HOME="$ANDROID_SDK_ROOT"

# added by travis gem
[ -f /Users/mark/.travis/travis.sh ] && source /Users/mark/.travis/travis.sh

# And finally, source any secrets.
source $HOME/.secrets
