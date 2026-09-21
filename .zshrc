export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="lambda"
alias dev="$HOME/dev"
alias dow="$HOME/Downloads"
alias doc="$HOME/Documents"
alias gb='popd'
alias clp='clipcopy'
export HISTSIZE=1000000000
export SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY
plugins=()
source $ZSH/oh-my-zsh.sh

if [[ -f /run/.toolboxenv ]]; then
    figlet Toolbx -f larry3d
    TOOLBOX_NAME=$(cat /run/.containerenv | grep -oP "(?<=name=\")[^\"]+")
    export PROMPT="%F{green}[%~]%f (%B%F{magenta}${TOOLBOX_NAME}%f%b) "
fi

# +Clipboard
if [[ -f /run/.toolboxenv ]]; then
    # At some point, I might need vim with clipboard...
    # But until then it's TRAMP time
    :
else
    alias vim="vimx"
fi

# This is to change the title of the buffer based on information provided by the
# shell. See, http://tldp.org/HOWTO/Xterm-Title-4.html, for the meaning of the
# various symbols.
autoload -U add-zsh-hook
add-zsh-hook -Uz chpwd (){ print -Pn "\e]2;%m:%2~\a" }

# Set up fzf key bindings and fuzzy completion
if [[ -f /run/.toolboxenv ]]; then
    # Need this since Uwuntu 24's fzf is too old.
    source /usr/share/doc/fzf/examples/key-bindings.zsh
    source /usr/share/doc/fzf/examples/completion.zsh
else
    source <(fzf --zsh)
fi


function ded() {
    if [ -n "$1" ]
    then
        # vterm_cmd find-file "$1"
        emacsclient -a "emacs" "$1"
    else
        printf "%s\n" "This is to open a file/path in an emacs buffer"
        printf "%s\n" "Try:"
        printf "%s\n" "ded $HOME"
    fi
}

# NOTE:  Vars defined here remain in shell env as long as process doesn't override ;3
# e.g ded $TMP
# e.g vim $TMP
# TODO:
function doa(){
if [ -z "$1" ]
then
    doa_lastest_dir="$(pwd)"
    tmp_date="$(date)"
    last_zsh_cmd="$(tail -n 1 ~/.zsh_history)"
    last_cmd="${last_zsh_cmd##*;}"
    last_cmd="${last_cmd%|*}"
    # last_cmd="${last_cmd// /\\ }"
    # last_cmd="${last_cmd//../PREV_DIR}"
    # last_cmd_as_file="${last_cmd// /}"
    # last_cmd_processed="${last_cmd//../PREV_DIR}"
    _tmp_date="${tmp_date// /_}"
    TMP="$(mktemp $_tmp_date.XXX -p /tmp)"
    cat >"$TMP"
    printf "\nThis output was produced by command:\n$last_cmd\n" >> "$TMP"
    printf "\nWhich ran from:\n$doa_lastest_dir\n" >> "$TMP"
    printf "\nWhich ran at:\n$tmp_date\n" >> "$TMP"
    printf "\nFollow the grey cat using:\n cd $doa_lastest_dir; $last_cmd \n" >> "$TMP"

    # printf  >> "$TMP"
    emacsclient -a "emacs" "$TMP"
else
    TMP="$1"
    cat >"$TMP"
    emacsclient -a "emacs" "$TMP"
fi
}

# TODO: bug with vterm and recentf??
# open recent file
function rf(){
    vterm_cmd recentf-open-most-recent-file
}

# With vterm_cmd you can execute Emacs commands directly from the shell.
# For example, vterm_cmd message "HI" will print "HI".
# To enable new commands, you have to customize Emacs's variable
# vterm-eval-cmds.
vterm_cmd() {
    local vterm_elisp
    vterm_elisp=""
    while [ $# -gt 0 ]; do
        vterm_elisp="$vterm_elisp""$(printf '"%s" ' "$(printf "%s" "$1" | sed -e 's|\\|\\\\|g' -e 's|"|\\"|g')")"
        shift
    done
    vterm_printf "51;E$vterm_elisp"
}

# Some of the most useful features in emacs-libvterm require shell-side
# configurations. The main goal of these additional functions is to enable the
# shell to send information to `vterm` via properly escaped sequences. A
# function that helps in this task, `vterm_printf`, is defined below.
function vterm_printf(){
    if [ -n "$TMUX" ] && ([ "${TERM%%-*}" = "tmux" ] || [ "${TERM%%-*}" = "screen" ] ); then
        # Tell tmux to pass the escape sequences through
        printf "\ePtmux;\e\e]%s\007\e\\" "$1"
    elif [ "${TERM%%-*}" = "screen" ]; then
        # GNU screen (screen, screen-256color, screen-256color-bce)
        printf "\eP\e]%s\007\e\\" "$1"
    else
        printf "\e]%s\e\\" "$1"
    fi
}

# This is to change the title of the buffer based on information provided by the
# shell. See, http://tldp.org/HOWTO/Xterm-Title-4.html, for the meaning of the
# various symbols.
autoload -U add-zsh-hook
add-zsh-hook -Uz chpwd (){ print -Pn "\e]2;%m:%2~\a" }

# Sync directory and host in the shell with Emacs's current directory.
# You may need to manually specify the hostname instead of $(hostname) in case
# $(hostname) does not return the correct string to connect to the server.
#
# The escape sequence "51;A" has also the role of identifying the end of the
# prompt
vterm_prompt_end() {
    vterm_printf "51;A$(whoami)@$(hostname):$(pwd)"
}
setopt PROMPT_SUBST
PROMPT=$PROMPT'%{$(vterm_prompt_end)%}'

fastfetch
printf "\n"

# TODO: add if Toolbox cond so we can see via color that we're in container
# if [ "$INSIDE_EMACS" = 'vterm' ]; then
#     # Set background color to dark gray
#     echo -ne '\e]11;#282a36\a'
# fi

# Claude's Safe Space
export PATH="$HOME/.local/bin:$PATH"

# opencode
export PATH=/home/c64357/.opencode/bin:$PATH
export PEDRO_API_KEY="Ssdf884-rea85l-ik8api-key-855"
export NODE_EXTRA_CA_CERTS="/home/c64357/.local/share/ca-certificates/microchip-ca.crt"
export REQUESTS_CA_BUNDLE="/home/c64357/.local/share/ca-certificates/microchip-ca.crt"

export PATH="/home/c64357/Downloads/ATfE-22.1.0-Linux-x86_64/bin/:$PATH"
