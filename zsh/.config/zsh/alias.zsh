# █▓▒░ NAVIGATION ░▒▓█
alias cd="z" # zoxide 
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ~="cd ~"
alias -- -="cd -"

# █▓▒░ FILE_SYSTEM ░▒▓█
alias ls="eza --icons=always --group-directories-first"
alias ll="ls -l"
alias la="ls -a"
alias l="ls -lah"
alias tree="ls --tree --icons=always"
alias y=yazi
alias md="mkdir -p"
alias rd="rm -ri"

# █▓▒░ YAYYY... 'N' PACMAN ░▒▓█
alias eve="yay -Syu"
alias get="yay -S"
alias whip="yay -Rns" # WHAPHAA
alias kara="pacman -Ss"
alias bruce="sudo pacman -Qtdq | sudo pacman -Rns -"

# █▓▒░ CONFIGS ░▒▓█
alias alfred="nvim ~/.config/zsh/ && source ~/.zshrc"
alias blanc="nvim ~/.config/hypr/landscape && hyprctl reload"
alias babs="nvim ~/.config/waybar/ && pkill waybar && waybar & disown" # ORACLE, BARBARA, BATS, BATGIRL...
alias gary="nvim ~/.config/nvim/" # SUPERMAN ROBOT #4
alias jullian="sudo nvim /usr/share/sddm/themes/where_is_my_sddm_theme/theme.conf" # JD

# █▓▒░ GAMES ░▒▓█
alias minecraft="~/games/minecraft/start.sh"
alias tron2="~/games/lsw/tron2.0.sh"
alias saw="~/games/lsw/saw.sh"
alias pop="~/games/lsw/sandsOfTime.sh"
alias nfs="cd ~/games/nfsHotPursuit2 && wine NFSHP2.exe"
alias stardew="~/games/stardewValley/start.sh"
alias greyhack="~/games/greyHack/run.sh"
alias eliza="~/games/eliza/start.sh"
alias hlife="~/games/halfLifeCounterStrike/hl.sh"
alias cstrike="~/games/halfLifeCounterStrike/cstrike.sh"

# █▓▒░ UTILS & MISC ░▒▓█
alias clear=reset
alias matrix="cmatrix -b"
alias quit=exit
alias open="xdg-open"
alias refresh="source ~/.zshrc"
alias f=fzf
alias qb="qbittorrent"
alias shuttle="luna shuttle" # for ol' times sake!!!
alias hist="history | grep"
alias grep="grep --color=auto"
alias py="python3"
alias pip="python -m pip"
alias q=exit
alias c=clear
alias ping="ping -c 8"
alias n=nvim
alias o="xdg-open"
alias src=source

maria() {
  sudo systemctl start mariadb
  if command -v mycli >/dev/null 2>&1; then
    sudo -E mycli -u root -h localhost
  else
    sudo mariadb
  fi
}

