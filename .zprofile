# add ~/.local/bin/ to $PATH to run scripts
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"

# default programs
export EDITOR="st -e nvim"
export TERMINAL="st"
export BROWSER="firefox" 
export FILE="nnn" 

# like luke's cleanup of ~/ dir
#export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export ZDOTDIR="$HOME/.config/zsh"
export LESSHISTFILE="-" 
export GIT_CONFIG="$XDG_CONFIG_HOME/git"
