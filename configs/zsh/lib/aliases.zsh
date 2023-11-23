#############
# aliases.zsh
#############

### Directories
alias ..='cd ..'
alias md='mkdir -pv'
alias rd='rmdir'

### Docker
alias doco='docker-compose'

### History
alias history="history -i"
alias h='history'

### Listing
alias l='exa --git -lFh'
alias L="less"
alias la='exa --git -lFha'
alias lat='exa --git -lFhaT'
alias lh='exa --git -ld .*'
alias ln='ln -i'
alias ls='exa --git -F'
alias lt='exa --git -lFhT'

### Package management & Updates
alias yup='yay -Syu'
alias yrm='yay -Rns'
alias yfind='yay -F'

### Readability
alias cat='bat -P'
alias d='kitty +kitten diff'
alias df='df -h'
alias du='du -h'
alias dud='du -d 1 -h'
alias ps='ps -F'
alias ssh='kitty +kitten ssh'
alias show='kitty +kitten icat'

### Safety
alias chgrp='chgrp --preserve-root'
alias chmod='chmod --preserve-root'
alias chown='chown --preserve-root'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -I'
alias trm='trash-put'

### Search
alias rg='rg -SpL --hidden --no-messages'

### Shortcuts and corrections
alias clr='clear'
alias code='code-insiders'
alias f='tail -f'
alias fping='ping -c 100 -s.2'
alias pscpu='ps auxf | sort -nr -k 3'
alias psmem='ps auxf | sort -nr -k 4'
alias swayprop='swayinfo'
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias wget='wget -c'
alias Z='z'

