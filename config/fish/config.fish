set fish_greeting ""

set -gx TERM xterm-256color

set -gx VISUAL nvim
set -gx EDITOR $VISUAL

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.bin $PATH
set -gx PATH ~/.local/bin $PATH
set -gx PATH ~/Library/Python/3.9/bin $PATH

# Ruby
# set -gx PATH /opt/homebrew/opt/ruby/bin $PATH

set -gx PATH /opt/homebrew/opt/grep/libexec/gnubin $PATH

# Rbenv
# set -Ux fish_user_paths $HOME/.rbenv/bin $fish_user_paths
status --is-interactive; and rbenv init - fish | source

# theme
set -g theme_color_scheme 'Tomorrow Night'
set -g fish_prompt_pwd_dir_length 1
# set -g theme_display_user yes
# set -g theme_hide_hostname no
# set -g theme_hostname always

# set -g tide_pwd_bg_color 575c5e
# set -g tide_status_bg_color 575c5e

set -g tide_pwd_bg_color 4B565C
set -g tide_status_bg_color 4B565C

# aliases
alias ls "ls -p -G"
alias la "ls -A"

alias ll "ls -l"
alias lla "ll -A"

if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end

alias vim nvim
alias e "$EDITOR"
alias v "$VISUAL"

# Bundler
alias b "bundle"

# Rails
alias migrate "bin/rails db:migrate db:rollback && bin/rails db:migrate db:test:prepare"
alias s "rspec"

# Pretty print the path
# alias path='echo $PATH | tr -s ":" "\n"'
alias path 'printf "%s\n" $PATH'

set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
  source $LOCAL_CONFIG
end
