if status is-interactive
    # Commands to run in interactive sessions can go here
    fastfetch
end

fish_add_path /home/linuxbrew/.linuxbrew/bin

alias ls="lsd --header"
alias cat=bat
alias grep=ug

starship init fish | source
fzf --fish | source
zoxide init fish --cmd cd | source

function dup
    echo -e "\x1b[33;49mSystem: Installing updates\x1b[0m" 
    sudo dnf upgrade
    echo -e "\x1b[33;49mFlatpak: Updating applications\x1b[0m" 
    flatpak update -y
end
