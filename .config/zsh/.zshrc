#
#
#
#
#
#
#
#
#
#
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=5000
SAVEHIST=5000
setopt appendhistory extendedglob nomatch
unsetopt autocd beep notify
bindkey -v

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

_comp_options+=(globdots)

prompt='> '
# for apps and actions
alias q='exit'
alias ..='cd ..'
alias rm='rm -iv'
alias mv='mv -iv'
alias mkd='mkdir -pv'
alias rmd='rmdir -pv'
alias t='touch'


alias p='sudo pacman'
alias pu='sudo pacman -Syu'
alias y='yay'

alias ls='ls -hN --color=auto --group-directories-first'
alias la='ls -ahN --color=auto --group-directories-first'
alias grep='grep --color=auto'

alias calcurse='calcurse -D ~/.config/calcurse'

alias pg='ping archlinux.org'

# for places
alias h='cd ~'

alias b='cd ~/books'


alias n='cd ~/notes'
alias nl='cd ~/notes/linuxporn'
alias nu='cd ~/notes/university'
alias ns='cd ~/notes/sekurno'

alias b='cd ~/books'

alias c='cd ~/notes/coding'
alias ckr='cd ~/notes/coding/c-k*'
alias cpm='cd ~/notes/coding/c-p*'
alias cl='cd ~/notes/coding/lua'
alias ch='cd ~/notes/coding/haskell'
alias cgc='cd ~/notes/coding/git-c'
alias cuc='cd ~/notes/coding/ucode-c'

alias dw='cd ~/download/'

alias cf='cd ~/.config/'
alias scr='cd ~/.local/bin/'

alias src='cd ~/.sources'

alias pp='cd ~/pics'
alias ps='cd ~/pics/screenshots'
alias pw='cd ~/pics/wallpapers'
