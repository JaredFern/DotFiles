# ONLY on localhost

export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export UNITER_DIR="/home/${USER}/Research/MultimodalElectra/modeling/UNITER"
export EFFICIENT_UNITER_DIR="/home/jaredfern/Projects/Assignments/16-785/efficient-uniter"
export DALLE_DIR="/home/jaredfern/Projects/Assignments/11-777/11-777-template/Code/DallE-pytorch"
export VL_FROM_SCRATCH_DIR="/home/jaredfern/Research/VLFromScratch"
export COURSE_DIR="/home/${USER}/Documents/Courses/cmu"
export STSIM_DIR="/home/${USER}/Research/textures"


alias jpynb_remote="jupyter lab --ip 0.0.0.0 --no-browser --port "
alias gogh='bash -c "$(wget -qO- https://git.io/vQgMr)"'
alias url="google-chrome"
alias incognito="google-chrome --incognito"
alias setclip="xclip -selection c"
alias getclip="xclip -selection c -o"
alias dotfiles="cd /home/jaredfern/dotfiles"
eval $(thefuck --alias)

docbox_mkdir() {
    mkdir /home/${USER}/Dropbox/${1};
    ln -s /home/${USER}/Dropbox/${1} /home/${USER}/Documents/${2};
}

port_fwd() {
    # $1: Port number
    # $2: Remote host
    ssh -N -L "${2}:localhost:${2}" ${1}
}

open(){
    search_dir="${2:-/home/${USER}/Documents}"
    cd $search_dir&>/dev/null;

    export FZF_DEFAULT_COMMAND='fdfind -L --ignore-file ~/.open_ignore'
    fzf_output="$(fzf --query=$1)";

    if test -f "${fzf_output}"
    then
        xdg-open "${fzf_output}"&>/dev/null;
        cd - &>/dev/null;
    elif test -d "${fzf_output}"
    then
        cd $fzf_output&>/dev/null;
    fi
}

