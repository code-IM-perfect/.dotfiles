if status is-interactive
    # Commands to run in interactive sessions can go here
    zoxide init fish | source
    set -gx STARSHIP_CONFIG ~/.config/fish/starship.toml
    starship init fish | source

    # Remember to enable the ssh-agent service before, cuz like otherwise this socket won't be created
    set -gx SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/ssh-agent.socket"

    bind -M "insert" ctrl-backspace "backward-kill-word"
    bind -M "insert" ctrl-delete "kill-word"
end
