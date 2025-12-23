# █▓▒░ HISTORY ░▒▓█
HISTFILE=$HOME/.cache/zshist
HISTSIZE=280000
SAVEHIST=280000

# █▓▒░ SOME PLUGINS ░▒▓█
setopt PROMPT_SUBST AUTO_CD AUTO_MENU COMPLETE_IN_WORD INTERACTIVE_COMMENTS
autoload -Uz colors && colors


# █▓▒░ AUTOSUGGESTIONS (ghost highway) ░▒▓█
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8"
bindkey '^ ' autosuggest-accept

# █▓▒░ SYNTAX HIGHLIGHTING (mesmerizing) ░▒▓█
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

# █▓▒░ FZF (fuzz ball) ░▒▓█
[[ -f /usr/share/fzf/key-bindings.zsh ]] && source /usr/share/fzf/key-bindings.zsh
[[ -f /usr/share/fzf/completion.zsh ]] && source /usr/share/fzf/completion.zsh
