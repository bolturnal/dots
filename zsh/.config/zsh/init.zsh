# █▓▒░ COLORS ░▒▓█
PURPLE="%F{141}" 
CYAN="%F{081}"    
TEAL="%F{072}"     
ORANGE="%F{209}"    
GRAY="%F{240}"       
DIM="%F{242}"         
PINK="%F{198}"    
BLUE="%F{027}"     
GREEN="%F{119}"      
YELLOW="%F{221}"      
RED="%F{203}"        
BOLD="%B"
NBOLD="%b"
RESET="%f"

# █▓▒░ ENV. VARIABLES ░▒▓█
export CONFIG_DIR="$HOME/.config"
export CACHE_DIR="$HOME/.cache"
export TERM=xterm-256color
export PATH="$HOME/.local/bin:$PATH"

# █▓▒░ ZOXIDE ░▒▓█
eval "$(zoxide init zsh)"

# █▓▒░ PROMPT ░▒▓█
PROMPT="${CYAN}%~${PURPLE}❯${RESET} "

