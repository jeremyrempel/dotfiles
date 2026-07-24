# Commands to run in interactive sessions can go here

# Oh My Posh
set -gx OMP_THEME "$HOME/.config/ohmyposh/theme.omp.json"

if test -f "$OMP_THEME"
    oh-my-posh init fish --config "$OMP_THEME" | source
else
    echo "Oh My Posh config not found: $OMP_THEME"
end

# Smarter directory navigation
zoxide init fish | source

# Per-project environment variables
direnv hook fish | source

# Better defaults
alias ls='eza'
alias ll='eza -lah --group-directories-first'
alias tree='eza --tree'
alias cat='bat'
alias grep='rg'
alias find='fd'
alias shutdown='systemctl poweroff'
alias reboot='systemctl reboot'
alias g='git'

# Useful interactive settings
set -g fish_greeting
set -gx EDITOR nvim
set -gx VISUAL nvim

if status is-interactive
  fastfetch
end
