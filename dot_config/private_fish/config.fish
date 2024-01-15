if status is-interactive
    # Commands to run in interactive sessions can go here
end

function starship_transient_prompt_func
    starship module character
end
# Starship -- Cross platform shell prompt
starship init fish | source
enable_transience

# Config fzf.fish
set fzf_preview_dir_cmd eza --all --long --color=always
