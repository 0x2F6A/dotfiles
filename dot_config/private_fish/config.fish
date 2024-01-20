if status is-interactive
    # Commands to run in interactive sessions can go here
end

function starship_transient_prompt_func
    starship module character
end
# starship -- Cross platform shell prompt
starship init fish | source
enable_transience

# zoxide -- A smarter cd command. Supports all major shells. 
zoxide init fish --cmd cd | source

# direnv -- unclutter your .profile 
direnv hook fish | source

# Config fzf.fish
set fzf_preview_dir_cmd eza --all --long --color=always
