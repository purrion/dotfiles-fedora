# Manually load .zprofile for non-login shells (like terminal emulators)
# Checks SHLVL=1 to avoid re-loading it in sub-shells (like typing 'zsh')
# Source: https://github.com/sorin-ionescu/prezto/blob/master/runcoms/zshenv
# 
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi
