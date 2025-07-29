if status is-interactive
    # Commands to run in interactive sessions can go here
    zoxide init fish | source

    bind -M "insert" ctrl-backspace "backward-kill-word"
    bind -M "insert" ctrl-delete "kill-word"
end
