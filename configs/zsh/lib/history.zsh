##############
# history.zsh
##############

### Configuration

# History file
HISTFILE=$ZDOTDIR/history
HISTSIZE=50000
SAVEHIST=10000

# History command
setopt appendhistory
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_save_no_dups
setopt hist_find_no_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_verify
setopt inc_append_history
setopt share_history