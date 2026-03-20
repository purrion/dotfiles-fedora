export XDG_PICTURES_DIR=$HOME/Pictures/Screenshots

export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml

### Editor & Terminal
#  
export VISUAL=nvim
export EDITOR=nvim
export TERMINAL="${TERMINAL:-kitty}"


### Android
#
export ANDROID_HOME=/opt/android_sdk


### Paths
#
# Ensure path array does not contain duplicates
typeset -gU path fpath


prepend_path_if_exists() {
    [ -d "$1" ] && path=("$1" $path)
}

prepend_path_if_exists "$HOME/.local/bin"
prepend_path_if_exists "$HOME/bin"
prepend_path_if_exists "$ANDROID_HOME/cmdline-tools/latest/bin"
prepend_path_if_exists "$ANDROID_HOME/platform-tools"

unfunction prepend_path_if_exists

eval "$(mise activate zsh --shims)"
