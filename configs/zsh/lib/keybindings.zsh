#################
# keybindings.zsh
#################

() {
    autoload -Uz edit-command-line

    zle -N edit-command-line
    zle -N do-nothing

    if (( $+terminfo[smkx] && $+terminfo[rmkx] )); then
        enable-term-application-mode() {
            echoti smkx
        }
        disable-term-application-mode() {
            echoti rmkx
        }
        autoload -Uz add-zle-hook-widget
        zle -N enable-term-application-mode
        zle -N disable-term-application-mode
        add-zle-hook-widget line-init enable-term-application-mode
        add-zle-hook-widget line-finish disable-term-application-mode
    fi

    local -A key_code=(
        Ctrl          '^'
        CtrlDel       '\e[3;5~'
        CtrlBackspace '^H'
        CtrlUp        '\e[1;5A'
        CtrlDown      '\e[1;5B'
        CtrlRight     '\e[1;5C'
        CtrlLeft      '\e[1;5D'
        AltUp         '\e[1;3A'
        AltDown       '\e[1;3B'
        AltRight      '\e[1;3C'
        AltLeft       '\e[1;3D'
        Alt           '\e'
        Tab           '\t'
        Backspace     '^?'
        Delete        '\e[3~'
        Insert        "$terminfo[kich1]"
        Home          "$terminfo[khome]"
        End           "$terminfo[kend]"
        PageUp        "$terminfo[kpp]"
        PageDown      "$terminfo[knp]"
        Up            "$terminfo[kcuu1]"
        Left          "$terminfo[kcub1]"
        Down          "$terminfo[kcud1]"
        Right         "$terminfo[kcuf1]"
        ShiftTab      "$terminfo[kcbt]"
    )

    bindings=(
        Left            backward-char
        Right           forward-char
        Up              history-substring-search-up
        Down            history-substring-search-down
        Backspace       backward-delete-char
        Delete          delete-char
        Home            beginning-of-line
        End             end-of-line
        PageUp          do-nothing
        PageDown        do-nothing
        CtrlLeft        backward-word
        CtrlRight       forward-word
        CtrlBackspace   backward-kill-word
        CtrlDel         kill-word
        Ctrl-J          backward-kill-line
        Ctrl-K          kill-line
        Ctrl-N          kill-buffer
        Ctrl-Z          undo
        Ctrl-Y          redo
        Ctrl-E          edit-command-line
        AltDown         fzf-cd-widget
        ShiftTab        reverse-menu-complete
    )


    local key widget
    for key widget in $bindings[@]; do
        local -a code=('')
        local part=''
        for part in ${(@ps:-:)key}; do
            if [[ $#part == 1 ]]; then
                code=${^code}${(L)part}
            elif [[ -n $key_code[$part] ]]; then
                local -a p=(${(@ps: :)key_code[$part]})
                code=(${^code}${^p})
            else
                (( $+key_code[$part] )) || print -P "%F{red}[ERROR]%f Undefined key: $part" >&2
                code=()
                break
            fi
        done
        local c=''
        for c in $code[@]; do
            bindkey $c $widget
        done
    done

    do-nothing() {}

    zsh-list-keybindings() {
        print ""
        print -P "%BConfigured key bindings%b"
        local key binding
        for key binding in $bindings[@]; do
            print -P "  %B- %F{cyan}$key%f%b %F{yellow}$binding%f"
        done
        print ""
    }
}
