if [[ "$(uname -m)" == "arm64" ]]; then
  export HOMEBREW_PREFIX="/opt/homebrew"
else
  export HOMEBREW_PREFIX="/usr/local"
fi

typeset -U path
path=("${(@ps/:/)PATH}")

path=(
  "$HOME/.opencode/bin"
  "$HOME/.local/scripts"
  "$HOME/.local/bin"
  "$HOME/go/bin"
  "$HOMEBREW_PREFIX/bin"
  "$HOMEBREW_PREFIX/sbin"
  $path
)

export PATH="${(j/:/)path}"
