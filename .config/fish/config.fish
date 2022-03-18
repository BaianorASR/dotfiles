if status is-interactive
  # Commands to run in interactive sessions can go here
end
set -gx TERM xterm-256color

#oh-my-posh --init --shell fish --config /home/baianor/baianor-dracula.json| source
  starship init fish | source

##################################
#       Dircolors
##################################
#eval ( dircolors --c-shell ~/.dir_colors)
#set -Ux LS_COLORS ( vivid generate lava )
set LS_COLORS (vivid generate nord)
#set -Ux LSCOLORS ~/.config/vivid/themes/lava.yml
#test -r ~/.dircolors-nord && eval (dircolors -c ~/.dircolors-nord)
#eval (dircolors ~/.dir_colors) 

###################################
#       Exa ls replacement
###################################
alias ls "exa -hg --icons --sort=type --group-directories-first --color=auto"
alias ll "ls --long"
alias la "ll -a"
alias lt "exa --icons --sort=type --group-directories-first --tree --level=4"
alias lat "lt -a"

alias :q "exit"
# abri dolphin como root
alias sudol "sudo pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY KDE_SESSION_VERSION=5 KDE_FULL_SESSION=true dbus-launch dolphin"

alias fish-conf "vim $HOME/.config/fish/config.fish"
alias kitty-conf "vim $HOME/.config/kitty/kitty.conf"
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

####################################
#       NVM
####################################
#set -gx PATH node_modules/.bin $PATH

####################################
#       BAT
####################################
set -x BAT_THEME Dracula

####################################
#
####################################
set -Ux FZF_DEFAULT_OPTS "--color=fg:#f8f8f2,bg:#282a36,hl:#bd93f9 --color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4"
####################################
