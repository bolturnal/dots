#!/usr/bin/env zsh

# █▓▒░ INIT ░▒▓█
zle-line-init()   { echoti smkx }
zle-line-finish() { echoti rmkx }
zle -N zle-line-init
zle -N zle-line-finish

# █▓▒░ BASICS ░▒▓█
local key_maps=(
  'khome:beginning-of-line'       # KRYPTO... HOME... take me HOME... to the place... I belong!!!
  'kend:end-of-line'              # END-OF-LINE
  'kich1:overwrite-mode'          # INSERT MODE
  'kdch1:delete-char'             # DELETE KEY
  'kcuu1:history-search-backward' # LOOK UP
  'kcud1:history-search-forward'  # LOOK ON DOWN FROM THE BRIDGE
  'kcub1:backward-char'           # GO WEST
  'kcuf1:forward-char'            # RIGHT-SIDE UP
  'kpp:beginning-of-history'      # PAGE-UP
  'knp:end-of-history'            # PAGE-DOWN
)

for map in $key_maps; do
  local key="${terminfo[${map%%:*}]}"
  [[ -n "$key" ]] && bindkey -- "$key" "${map#*:}"
done

# █▓▒░ ALMOST FORGOT ░▒▓█
bindkey '^H'      backward-kill-word   # ctrl+backspace
bindkey '^[[3;5~' kill-word            # ctrl+delete
bindkey '^[[1;5D' backward-word        # ctrl+leftArrow 
bindkey '^[[1;5C' forward-word         # ctrl+rightArrow

