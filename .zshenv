typeset -U PATH path
path=("$HOME/.local/bin" "$HOME/.config/nnn/plugins" "/home/andrew/scripts/i3-restore" "/home/andrew/scripts/fzf_speed" "/home/andrew/scripts" "/usr/lib/surfraw" "$path[@]")
export PATH
#Clipmenu options
export CM_SELECTIONS="clipboard"
export RANDFILE=/home/andrew/.rnd

export EDITOR=/usr/bin/nvim
export BROWSER=/usr/bin/qutebrowser 
#export BROWSERCLI=w3m
export XDG_CONFIG_DIR=/home/andrew/.config
export XDG_CACHE_DIR=/home/andrew/.cache
export XDG_MUSIC_DIR=/home/andrew/Music
export XDG_DATA_DIR=/home/andrew/.local/share
export MYVIMRC=/home/andrew/.config/nvim/init.vim
export MYTESTINGVIMRC=/home/andrew/.config/nvim/new.init.vim
export GOPATH=/home/andrew/.config/go
export CARGO_HOME=/home/andrew/.config/cargo
export LESSHISTFILE=-
export WGETRC="$XDG_CONFIG_DIR/wgetrc"
export YTFZF_CONFIG_DIR=/home/andrew/.config/ytfzf

# FZF
export FZF_DEFAULT_COMMAND='find . -type f'
export FZF_DEFAULT_OPTS="--layout=reverse --bind=J:down,K:up,esc:cancel,ctrl-j:preview-down,ctrl-k:preview-up"
