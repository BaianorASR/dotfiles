if status is-interactive
  # Commands to run in interactive sessions can go here

end
set -gx TERM xterm-256color

oh-my-posh --init --shell fish --config /home/baianor/baianor-nord.json| source
#  starship init fish | source

##################################
#       Dircolors
##################################
#eval ( dircolors --c-shell ~/.dir_colors)
set -Ux LS_COLORS ( vivid generate /home/baianor/.config/vivid/themes/nord.yml )
#set -Ux LSCOLORS ~/.dircolors-nord
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
#source /usr/share/nvm/init-nvm.sh

####################################
#       BAT
####################################
set -x BAT_THEME Nord

####################################
#
####################################
