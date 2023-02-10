if status is-interactive
    # Commands to run in interactive sessions can go here
end

# homebrew

fish_add_path /opt/homebrew/sbin

# python

fish_add_path /Users/kaechle/Library/Python/3.10/bin

# xnxm

set PATH /Users/kaechle/.local/share/nvm/v19.2.0/bin $PATH
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/config
export NPM_CONFIG_STORE_DIR=$XDG_DATA_HOME/npm
export NPM_CONFIG_CACHE_DIR=$XDG_CACHE_HOME/npm
export NPM_CONFIG_STATE_DIR=$XDG_STATE_HOME/npm
export NPM_CONFIG_LOGS_DIR=$XDG_CACHE_HOME/npm/logs
set -gx PNPM_HOME "/Users/kaechle/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH

# iterm

source ~/.config/fish/iterm2_shell_integration.fish
function iterm2_print_user_vars
end

# aliaseseses

alias dots='/opt/homebrew/bin/git'

# gofish

starship init fish | source
