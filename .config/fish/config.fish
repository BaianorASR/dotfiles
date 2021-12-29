if status is-interactive
  # Commands to run in interactive sessions can go here
    neofetch
  end
set fish_greeting
set -gx TERM xterm-256color

oh-my-posh --init --shell fish --config /home/baianor/stelbent.minimal.omp.json | source
#  starship init fish | source
##################################
#       Dircolors
##################################
#eval ( dircolors --c-shell $HOME/.dircolors.gruvbox )
set -Ux LS_COLORS ( vivid generate nord )
#set -Ux LSCOLORS ~/.dircolors
#test -r ~/.dircolors && eval (dircolors -c ~/.dircolors)
#eval (dircolors ~/.dircolors.gruvbox) 

###################################
#       Exa ls replacement
###################################
alias ls "exa -hg --icons --sort=type --group-directories-first --color=auto"
alias ll "ls --long"
alias la "ll -a"
alias lt "exa --icons --sort=type --group-directories-first --tree --level=4"
alias lat "lt -a"
alias sudol "sudo pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY KDE_SESSION_VERSION=5 KDE_FULL_SESSION=true dbus-launch dolphin"

####################################
#       NVIM
####################################
#alias vim='/home/baianor/.local/bin/nvim.appimage'
alias vim='nvim'
#####################################
set -Ua fish_user_paths $HOME/.cargo/bin
set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

export SPICETIFY_INSTALL="/home/baianor/Documents/spicetify-cli"
export PATH="$SPICETIFY_INSTALL:$PATH"
set -x BAT_THEME Nord

#neofetch

