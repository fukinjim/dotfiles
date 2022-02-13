export ZDOTDIR=$HOME/.config/zsh
source $ZDOTDIR/aliases
source $ZDOTDIR/functions
source $ZDOTDIR/zshcompletion
source $ZDOTDIR/prompt

# Command not found hook for pkgfile
source /usr/share/doc/find-the-command/ftc.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^ ' autosuggest-accept

# enable vim mode on commmand line
bindkey -v

# no delay entering normal mode
# https://coderwall.com/p/h63etq
# https://github.com/pda/dotzsh/blob/master/keyboard.zsh#L10
# 10ms for key sequences
KEYTIMEOUT=1

# Change cursor shape for different vi modes.
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}
zle -N zle-keymap-select

# add missing vim hotkeys
# http://zshwiki.org/home/zle/vi-mode
bindkey -a u undo
bindkey -a '^T' redo

# history search in vim mode
# http://zshwiki.org./home/zle/bindkeys#why_isn_t_control-r_working_anymore
# ctrl+r to search history
bindkey -M viins '^r' history-incremental-search-backward
bindkey -M vicmd '^r' history-incremental-search-backward

# FZF keybinding
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# Alias tips
source /usr/share/zsh/plugins/alias-tips/alias-tips.plugin.zsh

# Lines configured by zsh-newuser-install
HISTFILE=$HOME/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt extendedglob
#zstyle :compinstall filename '$HOME/.zshrc'
zmodload zsh/complist
autoload -Uz compinit
compinit
_comp_options+=(globdots)               # Include hidden files.

## dont warn me about bg processes when exiting
setopt nocheckjobs

## alert me if something failed
setopt printexitvalue

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'left' vi-backward-char
bindkey -M menuselect 'down' vi-down-line-or-history
bindkey -M menuselect 'up' vi-up-line-or-history
bindkey -M menuselect 'right' vi-forward-char
# Fix backspace bug when switching modes
bindkey "^?" backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}

eval "$(lua ~/scripts/z.lua --init zsh enhanced)"

