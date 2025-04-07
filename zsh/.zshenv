if [[ "$(uname -m)" == "arm64" ]]; then
  export HOMEBREW_PREFIX="/opt/homebrew"
else
  export HOMEBREW_PREFIX="/usr/local"
fi

typeset -U path
path=(
  "$HOME/.local/scripts"
  "$HOME/.local/bin"
  "$HOME/go/bin"
  "$HOMEBREW_PREFIX/bin"
  "$HOMEBREW_PREFIX/sbin"
  "/usr/local/bin"
  "/usr/local/sbin"
  "/usr/bin"
  "/bin"
  "/usr/sbin"
  "/sbin"
  "/System/Cryptexes/App/usr/bin"
  "/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin"
  "/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin"
  "/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin"
)

export PATH="${(j/:/)path}"
