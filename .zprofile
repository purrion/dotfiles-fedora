export XDG_PICTURES_DIR=$HOME/Pictures/Screenshots

export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml

### Editor & Terminal
# 
# 
export VISUAL=hx
export EDITOR=hx
export TERMINAL="${TERMINAL:-kitty}"


### Paths
#
# Ensure path array does not contain duplicates
typeset -gU path fpath

prepend_path_if_exists() {
    [ -d "$1" ] && path=("$1" $path)
}

prepend_path_if_exists "$HOME/.local/bin"
prepend_path_if_exists "$HOME/bin"

unfunction prepend_path_if_exists
