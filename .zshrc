# Command not found hook for pkgfile
source /usr/share/doc/find-the-command/ftc.zsh

# enable vim mode on commmand line
bindkey -v

# no delay entering normal mode
# https://coderwall.com/p/h63etq
# https://github.com/pda/dotzsh/blob/master/keyboard.zsh#L10
# 10ms for key sequences
KEYTIMEOUT=1

# show vim status
# http://zshwiki.org/home/examples/zlewidgets
#function zle-line-init zle-keymap-select {
    #RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
    #RPS2=$RPS1
    #zle reset-prompt
#}
#zle -N zle-line-init

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
bindkey '^?' backward-delete-char  #backspace

# history search in vim mode
# http://zshwiki.org./home/zle/bindkeys#why_isn_t_control-r_working_anymore
# ctrl+r to search history
bindkey -M viins '^r' history-incremental-search-backward
bindkey -M vicmd '^r' history-incremental-search-backward

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

# completion system

_cmpl_cheat() {
reply=($(cheat -l | cut -d' ' -f1))
}
compctl -K _cmpl_cheat cheat

    # allow one error for every three characters typed in approximate completer
    zstyle ':completion:*:approximate:' max-errors 'reply=( $((($#PREFIX+$#SUFFIX)/3 )) numeric )'

    # don't complete backup files as executables
    zstyle ':completion:*:complete:-command-::commands' ignored-patterns '(aptitude-*|*\~)'

    # start menu completion only if it could find no unambiguous initial string
    zstyle ':completion:*:correct:*' insert-unambiguous true
    zstyle ':completion:*:corrections' format $'%{\e[0;31m%}%d (errors: %e)%{\e[0m%}'
    zstyle ':completion:*:correct:*' original true

    # activate color-completion
    zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

    # format on completion
    zstyle ':completion:*:descriptions' format $'%{\e[0;31m%}completing %B%d%b%{\e[0m%}'

    # complete 'cd -<tab>' with menu
    zstyle ':completion:*:*:cd:*:directory-stack' menu yes select

    # insert all expansions for expand completer
    zstyle ':completion:*:expand:*' tag-order all-expansions
    zstyle ':completion:*:history-words' list false

    # activate menu
    zstyle ':completion:*:history-words' menu yes

    # ignore duplicate entries
    zstyle ':completion:*:history-words' remove-all-dups yes
    zstyle ':completion:*:history-words' stop yes

    # match uppercase from lowercase
    zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

    # separate matches into groups
    zstyle ':completion:*:matches' group 'yes'
    zstyle ':completion:*' group-name ''

    # if there are more than 5 options allow selecting from a menu
    zstyle ':completion:*' menu select=5

    zstyle ':completion:*:messages' format '%d'
    zstyle ':completion:*:options' auto-description '%d'

    # describe options in full
    zstyle ':completion:*:options' description 'yes'

    # on processes completion complete all user processes
    zstyle ':completion:*:processes' command 'ps -au$USER'

    # offer indexes before parameters in subscripts
    zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters

    # provide verbose completion information
    zstyle ':completion:*' verbose true

    # recent (as of Dec 2007) zsh versions are able to provide descriptions
    # for commands (read: 1st word in the line) that it will list for the user
    # to choose from. The following disables that, because it's not exactly fast.
    zstyle ':completion:*:-command-:*:' verbose false

    # set format for warnings
    zstyle ':completion:*:warnings' format $'%{\e[0;31m%}No matches for:%{\e[0m%} %d'

    # define files to ignore for zcompile
    zstyle ':completion:*:*:zcompile:*' ignored-patterns '(*~|*.zwc)'
    #zstyle ':completion:correct:' prompt 'correct to: %e'

    # Ignore completion functions for commands you don't have:
    zstyle ':completion::(^approximate*):*:functions' ignored-patterns '_*'

    # Provide more processes in completion of programs like killall:
    zstyle ':completion:*:processes-names' command 'ps c -u ${USER} -o command | uniq'

    # complete manual by their section
    zstyle ':completion:*:manuals' separate-sections true
    zstyle ':completion:*:manuals.*' insert-sections true
    zstyle ':completion:*:man:*' menu yes select

    # provide .. as a completion
    zstyle ':completion:*' special-dirs ..

    # run rehash on completion so new installed program are found automatically:
    _force_rehash() {
        (( CURRENT == 1 )) && rehash
        return 1
    }

    ## correction
    # try to be smart about when to use what completer...
    #setopt correct
    zstyle -e ':completion:*' completer '
        if [[ $_last_try != "$HISTNO$BUFFER$CURSOR" ]] ; then
            _last_try="$HISTNO$BUFFER$CURSOR"
            reply=(_complete _match _ignored _prefix _files)
        else
            if [[ $words[1] == (rm|mv) ]] ; then
                reply=(_complete _files)
            else
                reply=(_oldlist _expand _force_rehash _complete _ignored _correct _approximate _files)
            fi
        fi'

    # command for process lists, the local web server details and host completion
    zstyle ':completion:*:urls' local 'www' '/var/www/' 'public_html'

    # caching
    [[ -d $ZSHDIR/cache ]] && zstyle ':completion:*' use-cache yes && \
                            zstyle ':completion::complete:*' cache-path $ZSHDIR/cache/

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

# Configurations
cfg-bm() { $EDITOR $HOME/.config/surfraw/bookmarks}
cfg-dwm() { $EDITOR $HOME/.local/src/dwm/config.h;}
cfg-dwmblocks() { $EDITOR $HOME/.local/src/dwmblocks/config.h;}
cfg-Editor() { $EDITOR /home/andrew/.config/nvim/init.vim ;}
cfg-Env() { $EDITOR $HOME/.zshenv && source $HOME/.zshenv ;}
cfg-newsbeuter-feeds() { $EDITOR $HOME/.newsbeuter/urls ;}
cfg-hotkeys() { $EDITOR $HOME/.config/dxhd/dxhd.sh && dxhd -r;}
cfg-i3() { $EDITOR $HOME/.i3/config ;}
cfg-keymap() { sudo $EDITOR /usr/share/kbd/keymaps/i386/qwerty/my-us.map ;}
cfg-mpd() { $EDITOR /home/andrew/.mpd/mpd.conf;}
cfg-mpv() { $EDITOR /home/andrew/.config/mpv/mpv.conf;}
cfg-mutt() { $EDITOR $HOME/.muttrc ;}
cfg-ncmpcpp() { $EDITOR $XDG_CONFIG_DIR/ncmpcpp/config ;}
cfg-newsbeuter() { $EDITOR $HOME/.newsbeuter/config ;}
cfg-picom() { $EDITOR $HOME/.config/picom.conf;}
cfg-polybar() { $EDITOR $HOME/.config/polybar/config; }
cfg-qutebrowser() { $EDITOR $HOME/.config/qutebrowser/config.py;}
cfg-ranger() { $EDITOR $HOME/.config/ranger/rc.conf ;}
cfg-Shell() { $EDITOR $HOME/.zshrc && source $HOME/.zshrc ;}
cfg-snip() { $EDITOR $HOME/Documents/ComputerStuff/Tricks.txt ;}
cfg-surfraw() { $EDITOR $HOME/.surfraw.conf ;}
cfg-tmux() { $EDITOR $XDG_CONFIG_DIR/tmux/tmux.conf && tmux source $XDG_CONFIG_DIR/tmux/tmux.conf ;}
cfg-transmission-rss() { sudo $EDITOR /etc/transmission-rss.conf ;}
cfg-trc() { $EDITOR $HOME/.config/transmission-remote-cli/settings.cfg ;}
cfg-w3m() { $EDITOR $HOME/.w3m/config ;}
cfg-w3mkeys() { $EDITOR $HOME/.w3m/keymap ;}
cfg-xdefaults() { $EDITOR $HOME/.Xdefaults;}
cfg-xinitrc() { $EDITOR $HOME/.xinitrc ;}
cfg-xresources() { $EDITOR $HOME/.Xresources;}
cfg-zprofile() { $EDITOR $HOME/.zprofile ;}

# aliases
alias ..="cd .."
alias getpath="find -type f | fzf | sed 's/^..//' | tr -d '\n' | xclip -selection c"
alias ls="exa --icons -a --group-directories-first"
alias nnn="nnn -c"
alias pacman-install="pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S"
alias pacman-remove="pacman -Qq | fzf --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -Rns"
alias tmux="tmux -f $XDG_CONFIG_DIR/tmux/tmux.conf"
alias tsp-backup="TS_SOCKET=/tmp/backup tsp"
alias tsp-fiio="TS_SOCKET=/tmp/fiio tsp"
alias v="$EDITOR"
alias yt-song="youtube-dl -x --audio-format flac --audio-quality 0"
alias zshreload="source ~/.zshrc"

# Manage dotfiles with git bare repository
# https://www.atlassian.com/git/tutorials/dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
# config add /path/to/file
# config commit -m "A short message"
# config push

# Functions
rangercd () {
    tmp="$(mktemp)"
    ranger --choosedir="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp" >/dev/null
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^o' 'rangercd\n'
					
fcd() {
	cd "$(find -type d | fzf)"
}

open() {# {{{
	xdg-open "$(find -type f | fzf)"
}


# Spaceship prompt settings
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_CHAR_SYMBOL=❯
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_HG_SHOW=false
SPACESHIP_PACKAGE_SHOW=false
SPACESHIP_NODE_SHOW=false
SPACESHIP_RUBY_SHOW=false
SPACESHIP_ELM_SHOW=false
SPACESHIP_ELIXIR_SHOW=false
SPACESHIP_XCODE_SHOW_LOCAL=false
SPACESHIP_SWIFT_SHOW_LOCAL=false
SPACESHIP_GOLANG_SHOW=false
SPACESHIP_PHP_SHOW=false
SPACESHIP_RUST_SHOW=false
SPACESHIP_JULIA_SHOW=false
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_DOCKER_CONTEXT_SHOW=false
SPACESHIP_AWS_SHOW=false
SPACESHIP_CONDA_SHOW=false
SPACESHIP_VENV_SHOW=false
SPACESHIP_PYENV_SHOW=false
SPACESHIP_DOTNET_SHOW=false
SPACESHIP_EMBER_SHOW=false
SPACESHIP_KUBECONTEXT_SHOW=false
SPACESHIP_TERRAFORM_SHOW=false
SPACESHIP_TERRAFORM_SHOW=false
SPACESHIP_VI_MODE_SHOW=false
SPACESHIP_JOBS_SHOW=false

# Spaceship Prompt
autoload -U promptinit; promptinit
prompt spaceship

eval "$(lua ~/scripts/z.lua --init zsh enhanced)"
